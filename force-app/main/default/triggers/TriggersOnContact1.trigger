trigger TriggersOnContact1 on Contact (after insert, after update, after delete, after undelete) {
    
    Set<Id> accIds = new Set<Id>();
    if(Trigger.isInsert || Trigger.isUndelete){
        for(Contact con: Trigger.new){
            if(con.AccountId != NULL){
                accIds.add(con.AccountId);
            }
        }
    }
    
    if(Trigger.isdelete){
        for(Contact con: Trigger.old){
            if(con.AccountId != NULL){
                accIds.add(con.AccountId);
            }
        }
    }
    
    if(Trigger.isupdate){
        for(Contact con: Trigger.old){
            if(con.AccountId != NULL){
                accIds.add(con.AccountId);
            }
        }
        for(Contact con: Trigger.new){
            if(con.AccountId != NULL){
                accIds.add(con.AccountId);
            }
        }
    }
    List<Account> accList = [SELECT Id, (SELECT Id FROM Contacts) FROM Account WHERE Id IN: accIds];
    for(Account acc: accList){
        acc.Total_Contacts_Count__c = acc.Contacts.size();
    }
    update accList;
    
    /*Set<String> conEmails = new Set<String>();
    for(Contact con: Trigger.new){
        if(con.Email != NULL){
            conEmails.add(con.Email.toLowerCase());
        }
    }
    
    List<Contact> conList = [SELECT Id, AccountId, Email FROM Contact WHERE Email IN: conEmails];
    Set<String> emailExist = new Set<String>();
    for(Contact con: conList){
        emailExist.add(con.Email.toLowerCase());
    }
    for(Contact con: Trigger.new){
        if(con.Email != NULL && emailExist.contains(con.Email.toLowerCase())){
            con.Email.addError('Duplicate Email is not allowed.');
        }
    }*/
    
    /*Set<Id> conIds = new Set<Id>();
    for(Contact con: Trigger.new){
        if(con.AccountId != NULL){
            conIds.add(con.AccountId);
        }
    }
    
    Map<Id, Account> accMap = new Map<Id, Account>([SELECT Id, Industry FROM Account WHERE Id IN: conIds]);
    for(Contact con: Trigger.new){
        if(con.AccountId != NULL && accMap.containsKey(con.AccountId)){
            con.Account_Industry__c = accMap.get(con.AccountId).Industry;
        }
    }*/
    
    /*for(Contact con: Trigger.new){
        if(con.Email == NULL){
            con.Email.addError('Please provide the Email.');
        }
    }*/
    
    /*Set<Id> conIds = new Set<Id>();
    for(Contact con: Trigger.new){
        conIds.add(con.CreatedById);
    }
    
    Map<Id, User> userMap = new Map<Id, User>([SELECT Id, Name FROM User WHERE Id IN: conIds]);
    for(Contact con: Trigger.new){
        if(userMap.containsKey(con.CreatedById)){
            con.Account_Industry__c = userMap.get(con.CreatedById).Name;
        }
    }*/
    
    /*Set<String> conEmails = new Set<String>();
    for(Contact con: Trigger.new){
        if(con.Email != NULL ){
            conEmails.add(con.Email.toLowerCase());
        }
    }
    
    List<Contact> conList = [SELECT Id, AccountId, Email FROM Contact WHERE Email IN: conEmails];
    Set<String> emailExists = new Set<String>();
    for(Contact c: conList){
        emailExists.add(c.Email.toLowerCase());
    }
    for(Contact con: Trigger.new){
        if(con.Email != NULL && emailExists.contains(con.Email.toLowerCase())){
            con.Email.addError('Duplicate Contact with same Email.');
        }
    }*/
    
    /*for(Contact con: Trigger.new){
        if(con.Email == NULL){
            con.Email.addError('Please Provide the Email.');
        }
    }*/
    
    /*for(Contact con: Trigger.new){
        if(con.Email == NULL){
            con.Email.addError('Please Provide the Email.');
        }
    }*/
    
    /*Set<Id> conIds = new Set<Id>();
    for(Contact con: Trigger.new){
        if(con.AccountId != NULL){
            conIds.add(con.AccountId);
        }
    }
    Map<Id, Account> accMap = new Map<Id, Account>([SELECT Id, Industry FROM Account WHERE Id IN: conIds]);
    for(Contact con: Trigger.new){
        if(con.AccountId != NULL){
            Account acc = accMap.get(con.AccountId);
            if(acc != NULL){
                con.Account_Industry__c = acc.Industry;
            }
        }
    }*/
    
    /*for(Contact con: Trigger.new){
        if(con.Email == NULL){
            con.Email.addError('Please provide the Email.');
        }
    }*/
    
    /*Set<Id> accIds = new Set<Id>();    
    for(Contact con: Trigger.new){
        //Contact conOld = Trigger.OldMap.get(con.Id);
        if(con.AccountId != NULL){
        	accIds.add(con.AccountId);
        }
    }
    
    Map<Id, Account> accMap = new Map<Id, Account>([SELECT Id, Phone from Account where Id IN: accIds]);
    for(Contact con: Trigger.new){
        if(con.AccountId != NULL && accMap.containsKey(con.AccountId)){
        	con.Phone = accMap.get(con.AccountId).Phone;
        }
    }*/
    
    /*for(Cantact con:Trigger.new){
        con.Email = con.Email.toLowerCase();
    }*/
    
    /*List<Task> task = new List<Task>();    
    for(Contact con: Trigger.new){
        Task t = new task(Status = 'Not Started', Subject = 'Call', Priority = 'Normal', WhoId = con.Id);
        task.add(t);
    }
    if(!task.isEmpty()){
        insert task;
    }*/
    
    /*for(Contact con: Trigger.new){
        con.Email_Updated__c = true;
    }*/
	
    /*Account acc = [SELECT Id From Account where Name = 'varsha peseke' limit 1];
    for(Contact con: Trigger.new){
        if(con.AccountId == NULL){        
            con.AccountId = acc.Id;
        }	
    }*/
    
    /*for(Contact con: Trigger.new){
        if(con.Phone == NULL){
            con.Phone.addError('Phone number is Mandaory.');
        }
    }*/
    
    
}