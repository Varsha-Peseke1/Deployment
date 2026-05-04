public class LoopConcepts {
    public static void disAccount() {
        List<Account> accList = new List<Account>();
        Set<Id> setList = new Set<Id>();   // Set should store Ids, not Accounts
        Map<Id, Account> mapAcc = new Map<Id, Account>();
        
        accList = [SELECT Id, Name FROM Account LIMIT 5];
        
        if(accList.size() > 0) {
            for (Account acc : accList) {
                System.debug('acc.Id = ' + acc.Id);
                setList.add(acc.Id);   // Correct way to add Id into Set
                mapAcc.put(acc.Id, acc);
            }
            System.debug('Final Set of Account Ids: ' + setList);        
            System.debug('Final Map of Account Ids: ' + mapAcc);        
            
        }
        
        if(!mapAcc.isEmpty()){
            for(Id accId: mapAcc.keySet()){
                System.debug('Map Keys = ' + accId);
            }
        }
        
        
        if (!mapAcc.isEmpty()) {
            for (Account accName : mapAcc.values()) {
                System.debug('Map Values = ' + accName);
            }
        }        
    }
}