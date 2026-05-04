@isTest
public class UpdateParentAccountTest {
	@testSetup
    static void setup(){
        List<Account> accList = new List<Account>();
        accList.add(new Account(Name = 'Parent', Active__c = 'Yes'));
        for(Integer i=0;i<100;i++){
            accList.add(new Account(Name = 'TestAccountRecord' + i, Active__c = 'Yes'));
        }
        insert accList;
    }
    
    @isTest
    private static void testQueueable(){
        Id parentId = [SELECT Id FROM Account Where Name='Parent'][0].Id;
        List<Account> accList = [SELECT Id, Name FROM Account Where Name LIKE 'TestAccountRecord%'];
        
        UpdateParentAccount updateParAcc = new UpdateParentAccount(accList, parentId);
        
        Test.startTest();
        System.enqueueJob(updateParAcc);
        Test.stopTest();
        
        System.assertEquals(100, [SELECT count() FROM Account Where parentId =: parentId]);
    }
    
}