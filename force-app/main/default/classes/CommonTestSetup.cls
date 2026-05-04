@isTest
private class CommonTestSetup {
    @testSetup
    static void setup(){
        List<Account> testAccts = new List<Account>();
        for(Integer i=0;i<2;i++){
            testAccts.add(new Account(Name = 'TestAccount' + 1));
        }
        insert testAccts;
    }
    @isTest
    static void testMethod1(){
        Account acct = [SELECT Id FROM Account WHERE Name = 'TestAccount0' LIMIT 1];
        acct.Phone = '9897655443';
        update acct;
        Account acct2 = [SELECT Id FROM Account WHERE Name = 'TestAccount1' LIMIT 1];
        // acct2.Phone = '9897655443';
        delete acct2;
    }
    @isTest    
    static void testMethod2(){
        Account acct = [SELECT Id FROM Account WHERE Name = 'TestAccount0' LIMIT 1];
        System.assertEquals(null, acct.Phone);
        Account acct2 = [SELECT Id FROM Account WHERE Name = 'TestAccount1' LIMIT 1];
        System.assertNotEquals(null, acct2);
    }
}