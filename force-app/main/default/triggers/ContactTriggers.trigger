trigger ContactTriggers on Contact (before insert, after insert) {    
    /*for(Contact con: Trigger.new){
        if (String.isBlank(con.Email)) {
            con.Email.addError('Email is mandatory. Contact cannot be created without Email.');            
        }       
    }*/
    
    /*Set<String> emails = new Set<String>();      
    for(Contact con: Trigger.new){
        if(con.Email != Null){
        	emails.add(con.Email);
        }
    }
    Map<String, Contact> conMap = new Map<String, Contact>();
    for(Contact con: [SELECT Id, Email FROM Contact WHERE Email in: emails]){
        conMap.put(con.Email, con);
    }
    for(Contact con: Trigger.new){
        if(!String.isBlank(con.Email) && conMap.containsKey(con.Email)){
            con.Email.addError('This Email is Already exists.');
        }
    }*/
    
    Set<Id> Ids = new Set<Id>();
    for(Contact con: Trigger.new){
        if(con.AccountId != NULL){
            Ids.add(con.AccountId);
        }
    }
    if(Ids.isEmpty()){
        return;
    }
    
    Map<Id, Integer> accToCount = new Map<Id, Integer>();
    for(AggregateResult ar: [SELECT AccountId, COUNT(Id) total FROM Contact WHERE AccountId IN: Ids GROUP BY AccountId]){
        accToCount.put((Id) ar.get('AccountId'),(Integer) ar.get('total'));
    }
    
    List<Account> accList = new List<Account>();
    for(Id AccountId: accToCount.keySet()){
        accList.add(new Account(Id = AccountId, Count_No_Of_Contacts__c = accToCount.get(AccountId)));
    }
    update accList;
}