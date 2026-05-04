public class SingleAccountRecordInsert {
    public static void insertAccount(){
        Account acc = new Account(Name = 'Single account', Active__c = 'Yes', Industry = 'Media');
        Insert acc;
    }
    
    public static List<Contact> fetchAccountRecords(Id accId){
        List<Contact> conList = [SELECT Id, Name FROM Contact WHERE AccountId = :accId];
        System.debug(conList);
        return conList;
    }
    
    public static void updateRating(){
        List<Account> accList = [SELECT Id, Industry, Rating FROM Account WHERE Industry = 'Media'];
        // List<Account> accList = new List<Account>();
        for(Account acc: accList){        
            acc.Rating = 'Warm';
        }        
        if(!accList.isEmpty()){
            update accList;
        }
    }
    
    Public static Integer sumOfIntegers(Integer a,Integer b){
        Integer c = a + b;
        System.debug(c);
        return c;
    }

    public static List<Account> fetchAccountNames(){
        List<Account> accList = [SELECT Id, Name, OwnerId FROM Account];
        System.debug(accList);
        return accList;
    }
    
    public static void deleteEmptyEmailRecords(){
        List<Contact> accList = [SELECT AccountId, Name FROM Contact WHERE Email = ''];
        delete accList;
    }
    
    public static List<Account> checkExistingAccount(String Name){
        List<Account> accList = [SELECT Id, Name FROM Account WHERE Name = :Name];
        System.debug(accList);
        return accList;
    }
}