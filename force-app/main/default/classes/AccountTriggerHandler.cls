public class AccountTriggerHandler {
    
    public static void accountCreation(List<Account> accList){
        List<Messaging.SingleEmailMessage> email = new List<Messaging.SingleEmailMessage>();
        for(Account acc: accList){
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
        }
    }
    public static void preventDeletion(List<Account> accList){
        for(Account acc: accList){
            if(acc.Active__c == 'Yes'){
                acc.addError('Active Account Records cannot be deleted');
                // acc.addError(Label.Prevent_Account_Deletion);
            }
        }
    }
    public static void updateRelatedContact(List<Account> accList, Map<Id, Account> accOldMap){
        List<Contact> conList = new List<Contact>();
        Map<Id, Account> accMap = new Map<Id, Account>();
        // Set<Id> accIds = new Set<Id>();
        for(Account acc: accList){
            if(accOldMap != null && acc.Phone != accOldMap.get(acc.Id).Phone){
                accMap.put(acc.Id, acc);
            }
        }
        if(!accMap.isEmpty()){
        	conList = [SELECT Id, HomePhone, AccountId FROM Contact where AccountId IN: accMap.keySet()];
        }
        
        for(Contact con: conList){
            if(accMap.ContainsKey(con.AccountId)){
                con.HomePhone = accMap.get(con.AccountId).Phone;
                conList.add(con);
            }
        }
       
        if(!conList.isEmpty()){
            update conList;
        }
    }      
    
    public static void updatePhone(List<Account> accList, Map<Id, Account> accOldMap){
        for(Account acc: accList){
            if(acc.Phone != accOldMap.get(acc.Id).Phone){
                acc.Description = 'Phone number is updated i.e, '+ 'From' + accOldMap.get(acc.Id).Phone + 'to' + acc.Phone;
            }
        }
    }
    public static void createTask(List<Account> accList){
        List<Task> tList = new List<Task>();
        for(Account acc: accList){
            if(acc.Active__c == 'Yes'){
                Task t = new Task();
                t.Subject = 'Follow Up';
                t.ActivityDate = System.today() + 7;
                t.OwnerId = UserInfo.getUserId();
                t.Status = 'Not Started';
                t.WhatId = acc.Id;
                tList.add(t);
            }
        }
        if(!tList.isEmpty()){
            insert tList;
        }
    }
    public static void createRelatedOpp(List<Account> accList){
        List<Opportunity> oppList = new List<Opportunity>();
        for(Account acc: accList){
            if(acc.Active__c == 'Yes'){
                Opportunity opp = new Opportunity();
                opp.Name = acc.Name;
                opp.CloseDate = System.today();
                opp.StageName = 'Prospecting';
                opp.AccountId = acc.Id;
                oppList.add(opp);
            }
        }
        if(!oppList.isEmpty()){
            insert oppList;
        }
    }
    public static void updateDesc(List<Account> accList){
        for(Account acc: accList){
            acc.Description = 'Account trigger done before insert and trigger.new';
        }
    }
    /*public static void populateRating(List<Account> accList, Map<Id, Account> accOldMap){
        for(Account acc: accList){
            if((accOldMap == NULL && acc.Industry != NULL && acc.Industry == 'Media') || (acc.Industry != accOldMap.get(acc.Id).Industry && acc.Industry == 'Media')){
                acc.Rating = 'Hot';
            }
        }
    }*/
    public static void populateRating(List<Account> accList, Map<Id, Account> accOldMap) {
        for (Account acc : accList) {
    
            // INSERT scenario
            if (accOldMap == null) {
                if (acc.Industry == 'Media') {
                    acc.Rating = 'Hot';
                }
            }
            // UPDATE scenario
            else {
                Account oldAcc = accOldMap.get(acc.Id);
                if (oldAcc != null &&
                    acc.Industry != oldAcc.Industry &&
                    acc.Industry == 'Media') {
    
                    acc.Rating = 'Hot';
                }
            }
        }
    }

    
}