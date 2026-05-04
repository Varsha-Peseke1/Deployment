trigger TriggersOnAccount on Account (before insert, after insert) {
    
    /*for(Account acc: Trigger.new){
        acc.Name = acc.Name.toUpperCase();
    }*/
    
    /*for(Account acc: Trigger.new){
        if(acc.Phone != NULL){
        	String validatePhone = acc.Phone;
            if(validatePhone.length() != 10){
                acc.Phone.addError('Phone number should not exceed more than 10 digits.');
            }
        }
    }*/
    
   	/*for(Account acc: Trigger.new){
        acc.OwnerId = UserInfo.getUserId(); 
    }*/
    
    /*for(Account acc: Trigger.new){
       	Account parent = [SELECT Id, Active__c FROM Account WHERE Id = acc.ParentId ];
        if(parent.Active__c = 'NULL'){
            acc.addError('Parent Account is Inactive');
        }
    }*/
    
    /*List<Task> tasks = new List<Task>();
    for(Account acc: Trigger.new){
        tasks.add(new Task(WhatId = acc.Id, Subject= 'Follow Up'));
    }
    insert tasks;*/
    
    /*List<Contact> contacts = new List<Contact>();
    for(Account acc: Trigger.new){
        Contact con = new Contact(LastName = 'after', AccountId = acc.Id);
        contacts.add(con);
    }
    insert contacts;*/
    
    /*List<Messaging.SingleEmailMessage> email = new List<Messaging.SingleEmailMessage>();
    for(Account acc: Trigger.new){
        if(acc.Email__c != 'NULL'){
            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            mail.setToAddresses(new String[] { acc.Email__c});
            mail.setSubject('Welcome Email');
            mail.setPlainTextBody(
                'Hello' + acc.Name + ',\n\n Your Account has been Cretaed Successfully.'
            );
            email.add(mail);
        }
    }
    if(!email.isEmpty()){
        Messaging.sendEmail(email);
    }*/
    
    /*List<Contact> conList = new List<Contact>();
    for(Account acc: Trigger.new){
        for(Integer i=0; i<=6; i++){
            Contact con = new Contact(LastName=acc.Name + 'ManyContact' + i, AccountId = acc.Id );
            conList.add(con);
        }
    }
    if(!conList.isEmpty()){
        insert conList;
    }*/
    
    /*Map<Id, Account> accMap = Trigger.newMap;
    for(Id accId: accMap.keySet()){
        Account acc = accMap.get(Id);        
    }*/    
    
    /*if(Trigger.isInsert){
        if(Trigger.isAfter){
            AccountTriggerHandler.accountCreation(Trigger.new);
        }
    }*/
}