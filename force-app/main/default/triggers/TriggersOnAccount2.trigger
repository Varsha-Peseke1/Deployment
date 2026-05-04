trigger TriggersOnAccount2 on Account (before insert, before update) {
    
    for(Account acc : Trigger.new){  
        if(acc.Type == NULL){
            acc.Type = 'Prospect';
        }
    }
    
	/*for(Account acc : Trigger.new){        
        if(String.isBlank(acc.ShippingStreet)){            
            acc.ShippingStreet     = acc.BillingStreet;
            acc.ShippingCity       = acc.BillingCity;
            acc.ShippingState      = acc.BillingState;
            acc.ShippingPostalCode = acc.BillingPostalCode;
            acc.ShippingCountry    = acc.BillingCountry;
        }
    }*/
    
    /*Set<Id> accIds = new Set<Id>();
    for(Account acc: Trigger.old){
        accIds.add(acc.Id);
    }
    
    Map<Id, Integer> caseMap = new Map<Id, Integer>();
    for(Case cs: [SELECT Id, AccountId FROM Case Where AccountId IN: accIds and Status != 'Closed']){
        caseMap.put(cs.AccountId, 1);
    }
    
    for(Account acc: Trigger.old){
        if(caseMap.containsKey(acc.Id)){
            acc.addError('Cannot Delete Account with closed cases.');
        }
    }*/ 
    
    /*for(Account acc: Trigger.new){
        if(acc.AnnualRevenue <= 100000){
            acc.Rating = 'Cold';
        } else if(acc.AnnualRevenue <= 200000){
            acc.Rating = 'Warm';
        } else {
            acc.Rating = 'Hot';
        }
    }*/
       
    /*Set<Id> accIds = new Set<Id>();
    for(Account acc: Trigger.old){
        accIds.add(acc.Id);
    }
    
    Map<Id, Integer> caseMap = new Map<Id, Integer>();
    for(Case cs: [SELECT Id, AccountId FROM Case WHERE AccountId IN: accIds and Status != 'Closed']){
        caseMap.put(cs.AccountId, 1);
    }
    
    for(Account acc: Trigger.old){
        if(caseMap.containsKey(acc.Id)){
            acc.addError('Cannot Delete record with Open Cases.');
        }
    }*/
    
    /*for(Account acc: Trigger.new){
        if(acc.Type == NULL){
            acc.Type = 'Prospect';
        }
    }*/
  
    /*Set<Id> accIds = new Set<Id>();
    Map<Id, String> accIndustryMap = new Map<Id, String>();

    for (Account acc : Trigger.new) {
        if (Trigger.isInsert || 
           (Trigger.isUpdate && acc.Industry != Trigger.oldMap.get(acc.Id).Industry)) {

            accIds.add(acc.Id);
            accIndustryMap.put(acc.Id, acc.Industry);
        }
    }

    if (accIds.isEmpty()) return;

    List<Contact> conList = [
        SELECT Id, AccountId
        FROM Contact
        WHERE AccountId IN :accIds
    ];

    for (Contact con : conList) {
        con.Account_Industry__c = accIndustryMap.get(con.AccountId);
    }

    if (!conList.isEmpty()) {
        update conList;
    }*/
    
    /*for(Account acc: Trigger.new){
        if(acc.AnnualRevenue < 50000 && acc.AnnualRevenue > 0){
            acc.Rating = 'Hot';
        } else if(acc.AnnualRevenue < 100000 && acc.AnnualRevenue > 50000 ){
            acc.Rating = 'Warm';
        } else {
            acc.Rating = 'Cold';
        }
    }*/
    
    /*for(Account acc: Trigger.new){
        if(acc.AnnualRevenue > 0){
            acc.Rating = 'Cold';
        } else if(acc.AnnualRevenue > 50000){
            acc.Rating = 'Warm';
        } else {
            acc.Rating = 'Hot';
        }
    }*/
    
    /*for(Account acc: Trigger.new){
        if(acc.AnnualRevenue < 0){
            acc.AnnualRevenue.addError('Please give Positive value for AnnualRevenue field.');
        }
    }*/
    
    /*for(Account acc: Trigger.new){
        if(acc.AnnualRevenue > 0 && acc.AnnualRevenue < 50000){
            acc.Rating = 'Cold';
        } else if(acc.AnnualRevenue < 100000){
            acc.Rating = 'Warm';
        } else {
            acc.Rating = 'Hot';
        }
    }*/
    
   /* Set<Id> accIds = new Set<Id>();
    for(Account acc: Trigger.new){
        Account oldAcc = Trigger.oldMap.get(acc.Id);
        if(acc.Active__c == 'NO' && oldAcc.Active__c != 'No'){
            accIds.add(acc.Id);
        }
    }

	List<Case> caseMap = [SELECT Id, Status FROM Case WHERE Id IN: accIds AND IsClosed = false];
    for(Case c: caseMap){
        c.Status = 'Closed';
    }  
    if(!caseMap.isEmpty()){
        update caseMap;
    }*/
    
    /*List<Contact> conList = new List<Contact>();
    for(Account acc: Trigger.new){
        Contact con = new Contact(LastName = acc.Name, AccountId = acc.Id);
        conList.add(con);
    }
    
    if(!conList.isEmpty()){
        insert conList;
    }*/
    
	/*for(Account acc: Trigger.new){
        if(acc.Phone == NULL){
            acc.Phone = 'NA';
        }
    }    */
    
    /*for(Account acc:Trigger.new){
        if(acc.Industry == NULL){
         	acc.Industry = 'IT';   
        }
    }*/
    
    /*List<Contact> conList = new List<Contact>();
    for(Account acc: Trigger.new){
        Contact con = new Contact(LastName = acc.Name, AccountId = acc.Id, Phone = '7856756490');
        conList.add(con);
    }
    if(!conList.isEmpty()){
        insert conList;
    }*/
    
    /*for(Account acc: Trigger.new){
        if(acc.Description == NULL){
            acc.Description = UserInfo.getUserName();
        }
    }*/
}