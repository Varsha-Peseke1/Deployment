public class CustomObjectsRecordsCreation {
    public static void createClass() {

        // Create Class__c
        Class__c cls = new Class__c();
        cls.Name = 'test1';
        insert cls;

        // Create Student__c
        Student__c stu = new Student__c();
        stu.RecordTypeId = '012d2000005ltuDAAQ';  // corrected quote
        stu.Name__c = 'Test';
        insert stu;
        
        // Create Account (required for Opportunity and Case)
        Account acc = new Account();
        acc.Name = 'Test Account';
        insert acc;

        // Create Opportunity
        Opportunity opp = new Opportunity();
        opp.Name = 'Test Opportunity';
        opp.CloseDate = System.today();
        opp.StageName = 'Prospecting';
        opp.AccountId = acc.Id;
        insert opp;

        // Create Case
        Case ca = new Case();    
        ca.RecordTypeId = '012d2000007CQCPAA4';
        ca.Status = 'Working';
        ca.Origin = 'Web';
        ca.AccountId = acc.Id;
        insert ca;
    }
}