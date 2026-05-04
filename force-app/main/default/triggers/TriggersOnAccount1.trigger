trigger TriggersOnAccount1 on Account (after update) {
    /*List<Contact> newCon = new List<Contact>();
    Map<Id, Account> accMap = new Map<Id, Account>();
    for(Account acc: Trigger.new){
        Account oldAcc = Trigger.OldMap.get(acc.Id);
        if(acc.Phone != oldAcc.Phone){
            accMap.put(acc.Id, acc);
        }
    }
    List<Contact> conList = [SELECT Id, AccountId, Phone FROM Contact WHERE AccountId IN: accMap.keySet()];
    for(Contact con: conList){
        con.Phone = accMap.get(con.AccountId).Phone;
        newCon.add(con);
    }
    if(!newCon.isEmpty()){
        update newCon;
    }*/
    
    /*for(Account acc: Trigger.new){
        Account oldAcc = Trigger.OldMap.get(acc.Id);
        if(acc.Name != NULL && oldAcc.Name != NULL){
        	System.debug('Name changed from' + oldAcc.Name + 'to' + acc.Name);
        }
    }*/
    
    /*List<Account> accList = new List<Account>();
    for(Account acc:Trigger.new){
        Account accOld = Trigger.OldMap.get(acc.Id);
        if(acc.Phone != accOld.Phone){
            accList.add(new Account(Id = acc.Id, Phone_Changed__c = True));            
        }
    }
    if(!accList.isEmpty()){
        update accList;
    }*/
    
    /*List<Contact> conNew = new List<Contact>();
    Map<Id, String> accMap = new Map<Id, String>();
    for(Account acc: Trigger.new){
        Account accOld = Trigger.OldMap.get(acc.Id);
        if(acc.Name != NULL && accOld.Name != NULL){
            accMap.put(acc.Id, acc.Name);
        }
    }
    List<Contact> conList = [SELECT Id, AccountId from Contact where AccountId IN: accMap.keySet()];
    for(Contact con: conList){
        con.LastName = accMap.get(con.AccountId);
        conNew.add(con);
    }
    if(!conNew.isEmpty()){
        update conNew;
    }*/
    
    /*List<Messaging.SingleEmailMessage> email = new List<Messaging.SingleEmailMessage>();
    for(Account acc: Trigger.new){
        Account oldMap = Trigger.OldMap.get(acc.Id);
        if(acc.AnnualRevenue > oldMap.AnnualRevenue && acc.AnnualRevenue != NULL && oldMap.AnnualRevenue != NULL){
            if(acc.Email__c != NULL){
                Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                mail.setToAddresses(new String[] {acc.Email__c});
                mail.setSubject('Welcome');
                mail.setPlainTextBody('Hello ' + acc.Name + 'Your Account has been created.');
                email.add(mail);
            }
        }
    }
    if(!email.isEmpty()){
        Messaging.sendEmail(email);
    }*/
	
    
    
}