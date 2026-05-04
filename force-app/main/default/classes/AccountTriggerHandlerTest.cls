@isTest
private class AccountTriggerHandlerTest {

    @isTest
    static void createRelatedOppTest(){
        List<Account> accList = new List<Account>();

        for(Integer i = 1; i <= 10; i++){
            Account acc = new Account();
            acc.Name = 'Test' + i;
            acc.Active__c = 'Yes';
            accList.add(acc);
        }
        
        for(Integer i = 1; i <= 10; i++){
            Account acc = new Account();
            acc.Name = 'Test' + i;
            acc.Phone = '9876543211';
            acc.Active__c = 'Yes';
            accList.add(acc);
        }

        Test.startTest();
        insert accList;
        Test.stopTest();

        List<Opportunity> oppList = [
            SELECT Id 
            FROM Opportunity 
            WHERE AccountId = :accList[0].Id
        ];

        System.assert(!oppList.isEmpty(), 'Opportunity is not created.');
    }
}