@isTest
public class AccountCalculatorTest {
    @isTest
    private static void countContactsTest(){
        List<Account> accList = new List<Account>();
        for(Integer i=0; i<=250; i++){
            accList.add(new Account(Name = 'test23' + i, Active__c = 'Yes'));
        }
        Test.startTest();
        insert accList;
        
        List<Contact> conList = new List<Contact>();
        List<Id> accIds = new List<Id>();
        
        for(Account acc: accList){
            Contact con = new Contact();
            con.FirstName = 'test';
            con.LastName = 'acc.Name';
            con.AccountId = acc.Id;
            conList.add(con);
            accIds.add(acc.Id);
        }
        insert conList;
        AccountCalculator.countContacts(accIds);
        
        Test.stopTest();
        
        List<Account> accs = [SELECT Id, Count_No_Of_Contacts__c FROM Account];
        
        System.assertEquals(1, accs[0].Count_No_Of_Contacts__c, 'Contacts are not counted succesfully.');
        
        
    }
}