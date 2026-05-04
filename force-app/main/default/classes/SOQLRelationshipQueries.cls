public class SOQLRelationshipQueries {
    public static void standardParentToChild(){
        List<Account> accList = new List<Account>();
        accList = [SELECT Id, Name, (SELECT FirstName, LastName FROM Contacts) FROM Account where Rating = 'Hot'];
        
        for(Account acc: accList){
            System.debug('Account = ' + acc.Name);
            for(Contact con: acc.Contacts){
                System.debug('Contacts = ' + con.FirstName + con.LastName);
            }
        }
    }
    
    
    public static void customParentToChild(){
        List<class__c> clsList = new List<class__c>();
        clsList = [SELECT Name, Highest_Entrance_Score__c, (SELECT Age__c, Brief_Bio__c FROM Students__r) FROM class__c];
        
        for(class__c cls: clsList){
            System.debug('Class = ' + cls.Name + cls.Highest_Entrance_Score__c);
            for(Student__c stu: cls.Students__r){
                System.debug('Students = ' + stu.Age__c + stu.Brief_Bio__c);
            }
        }
    }
}