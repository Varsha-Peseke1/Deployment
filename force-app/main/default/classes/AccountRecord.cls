public class AccountRecord {
    public static ID insertAccount(String name, String rating, String active){
        Account acc = new Account();
        acc.Name = name;
        acc.Rating = rating;
        acc.Active__c = active;
        insert acc;
        return acc.Id;
    }
    
    public static void insertContact(){
        Id accId;
        accId = insertAccount('name 1', 'Warm', 'Yes');
        Contact con = new Contact(FirstName = 'name 1', LastName = 'last');
        con.accountId = accId;
        insert con;
    }
    
    public static void insertAccountWithContactAndOpportunity(String name, String rating, String active){
        Account acc = new Account();
        acc.Name = name;
        acc.Rating = rating;
        acc.Active__c = active;
        insert acc;
        
        Contact con = new Contact(FirstName = 'name 2', LastName = 'last1');
        con.accountId = acc.Id;
        insert con;
        
        Opportunity opp = new Opportunity();
        opp.Name = 'name';
        opp.CloseDate = System.today();
        opp.StageName = 'Prospecting';
        opp.AccountId = acc.Id;
        insert opp;        
    }
    
    public static void insertAccountWithContactAndOpportunityAndCase(String name, String rating, String active){
        Account acc = new Account();
        acc.Name = name;
        acc.Rating = rating;
        acc.Active__c = active;
        insert acc;
        
        Contact con = new Contact(FirstName = 'name 2', LastName = 'last1');
        con.accountId = acc.Id;
        insert con;
        
        Opportunity opp = new Opportunity();
        opp.Name = 'name';
        opp.CloseDate = System.today();
        opp.StageName = 'Prospecting';
        opp.AccountId = acc.Id;
        insert opp;
        
        Case ca = new Case();    
        ca.RecordTypeId = '012d2000007CQCPAA4';        
        ca.Status = 'Working';
        ca.Origin = 'Web';
        ca.AccountId = acc.Id;
        insert ca;        
    }
}