trigger TriggerOnOpportunity on Opportunity (after insert, after update) {
    
    /*Set<Id> oppIds = new Set<Id>();
    if(Trigger.isInsert || Trigger.isupdate || Trigger.isUndelete){
        for(Opportunity opp:Trigger.new){
            if(opp.AccountId != NULL){
                oppIds.add(opp.Id);
            }
        }
    }
    
    if(Trigger.isupdate || Trigger.isdelete){
        for(Opportunity opp:Trigger.old){
            if(opp.AccountId != NULL){
                oppIds.add(opp.Id);
            }
        }
    }
    
    Map<Id, Decimal> oppMap = new Map<Id, Decimal>();
    for(AggregateResult ar: [SELECT AccountId, SUM(Amount) total FROM Opportunity WHERE StageName = 'Closed Won' AND AccountId IN: oppIds Group BY AccountId]){
        oppMap.put(
        	(Id) ar.get('AccountId'),
            (Decimal) ar.get('total')
        );
    }
    List<Account> accList = new List<Account>();
    for(Id accId: oppIds){
        Decimal total = oppMap.containsKey(accId) ? oppMap.get('accId') : 0 ;
        accList.add(new Account(Id = accId, Total_Closed_Won_Amount__c = total));
    }
    
    if(!acclist.isEmpty()){
        update accList;
    }*/
    
    /*for(Opportunity opp:Trigger.new){
        Opportunity oppOld = Trigger.oldMap.get(opp.Id);
        if(opp.Amount != NULL && opp.Amount != oppOld.Amount){
            opp.Previous_Amount_c__c = oppOld.Amount;
        }
    }*/
    
    /*for(Opportunity opp: Trigger.new){
        if(opp.Description == NULL){
            opp.Description = 'Description was default';
        }
    }*/
    
    /*for(Opportunity opp: Trigger.new){
        if(opp.Amount < 0){
            opp.Amount.addError('Please Give the Positive amount');
        }
    }*/
    
    /*for(Opportunity opp: Trigger.new){
        if(opp.CloseDate < System.today()){
			opp.CloseDate.addError('Past Dates are not allowed, Please select the date from today.');            
        } 
    }*/
    
    /*Set<Id> oppIds = new Set<Id>();
    if(Trigger.isInsert || Trigger.isUndelete || Trigger.isUpdate){
        for(Opportunity opp: Trigger.new){
            if(opp.AccountId != NULL){
                oppIds.add(opp.Id);
            }
        }
    }
    
    if(Trigger.isDelete || Trigger.isUpdate){
        for(Opportunity opp: Trigger.old){
            if(opp.AccountId != NULL){
                oppIds.add(opp.Id);
            }
        }
    }
    
    Map<Id, Decimal> accMap = new Map<Id, Decimal>();
    for(AggregateResult ar: [SELECT AccountId, SUM(Amount) totalAmt FROM Opportunity Where StageName = 'Closed Won' AND AccountId IN: oppIds GROUP BY AccountId]){
        
        accMap.put(
        	(Id) ar.get('AccountId'),
            (Decimal) ar.get('totalAmt')
        );
    }
    
    List<Account> accList = new List<Account>();
    
    for(Id accId: oppIds){
        Decimal total = accMap.containsKey(accId) ? accMap.get('accId') : 0;
        accList.add(new Account(Id = accId, Total_Closed_Won_Amount__c = total));
    }
    if(!accList.isEmpty()){
        update acclist;
    }*/
    
    /*Set<Id> oppIds = new Set<Id>();
    for(Opportunity opp: Trigger.new){
        Opportunity oldOpp = Trigger.oldMap.get(opp.Id);
        if(opp.AccountId != NULL && opp.StageName == 'Closed Won' && oldOpp.StageName != 'Closed Won'){
            oppIds.add(opp.AccountId);
        }
    }
    if(oppIds.isEmpty()) return;

    List<Account> accList = [SELECT Id, Active__c FROM Account WHERE Id IN: oppIds];
    for(Account acc: accList){
        acc.Active__c = 'No';
    }
    if(!accList.isEmpty()){
        update accList;
    }*/
    
    /*for(Opportunity opp: Trigger.new){
        Opportunity oldOpp = Trigger.oldMap.get(opp.Id);
        if(Trigger.isUpdate && opp.Amount != oldOpp.Amount){
            opp.Previous_Amount_c__c = oldOpp.Amount;
        }
    } */   
    
    /*for(Opportunity opp: Trigger.new){
        if(opp.Description == NULL){
            opp.Description = 'Dummy Decription filled.';
        }    
    }*/
    
    /*for(Opportunity opp: Trigger.new){
        if(opp.Amount != NULL && opp.Amount <= 0){
            opp.Amount.addError('Please give the valid Amount.');
        }
    }*/
    
    /*for(Opportunity opp: Trigger.new){
        if(opp.CloseDate < System.today()){
            opp.CloseDate.addError('Please give Present Dates.');
        }  
    }*/
    
    /*for(Opportunity opp: Trigger.new){
        if(opp.StageName == NULL){
            opp.StageName = 'Prospecting';
        }
    }*/
    
    /*List<Task> taskList = new List<Task>();    
    for(Opportunity opp: Trigger.new){
        if(Trigger.isInsert && opp.StageName == 'Negotiation/Review'){
           Task tk = new Task(OwnerId = opp.OwnerId, Status = 'In Progress', Subject = 'Call', Priority = 'High', WhatId = opp.Id);
           taskList.add(tk);
        }
        if(Trigger.isUpdate){
            Opportunity oldOpp = Trigger.oldMap.get(opp.Id);
            if(opp.StageName == 'Negotiation/Review' && oldOpp.StageName != 'Negotiation/Review'){
                Task tk = new Task(OwnerId = opp.OwnerId, Status = 'In Progress', Subject = 'Call', Priority = 'High', WhatId = opp.Id);
                taskList.add(tk);
            }
        }
    }*/
    
    /*Set<Id> accIds = new Set<Id>();
    if(Trigger.isInsert || Trigger.isUpdate || Trigger.isUndelete){
        for(Opportunity opp: Trigger.new){
            if(opp.AccountId != NULL){
                accIds.add(opp.AccountId);
            }
        }
    }
    if(Trigger.isUpdate || Trigger.isdelete){
        for(Opportunity opp: Trigger.old){
            if(opp.AccountId != NULL){
                accIds.add(opp.AccountId);
            }
        }
    }
    
    List<Account> accList = new List<Account>();
    
    for(AggregateResult ar: [SELECT AccountId accId, COUNT(Id) total FROM Opportunity Where AccountId IN: accIds GROUP BY AccountId]){
        accList.add(new Account(Id = (Id) ar.get('accId'), Total_Opps_Count__c = (Integer) ar.get('total')));
    }
    update accList;*/
    
    /*Set<Id> oppIds = new Set<Id>();
    for(Opportunity opp: Trigger.new){
        Opportunity oldOpp = Trigger.oldMap.get(opp.Id);
        if(opp.AccountId != NULL && opp.StageName != 'Closed Won' && oldOpp.StageName == 'Closed Won'){
            oppIds.add(opp.AccountId);
        }
    }
    if(!oppIds.isEmpty()){
        List<Account> accList = [SELECT Id, Active__c FROM Account WHERE Id IN: oppIds];
        for(Account acc: accList){
            acc.Active__c = 'Yes';
        }
        update accList;
    }*/
    
    /*Set<Id> oppIds = new Set<Id>();
    for(Opportunity opp: Trigger.new){
        Opportunity oldOpp = Trigger.oldMap.get(opp.Id);
        if(opp.AccountId != NULL && opp.StageName == 'Closed Won' && oldOpp.StageName != 'Closed Won'){
            oppIds.add(opp.AccountId);
        }
    }
    
    if(!oppIds.isEmpty()){
        List<Account> accList = [SELECT Id, Active__c FROM Account WHERE Id IN: oppIds];
        for(Account acc: accList){
            acc.Active__c = 'Yes';
        }
        update accList;
    }*/
    
    /*for(Opportunity opp: Trigger.new){	
        if(opp.CloseDate != NULL && opp.CloseDate < Date.today()){
            opp.CloseDate.addError('You Cannot Select the Past Dates.');
        }
    }*/
    
    /*for(Opportunity opp: Trigger.new){
        if(opp.Description == NULL){
            opp.Description = 'Default Description Created.';
        }
    }*/
    
    /*Set<Id> accIds = new Set<Id>();
    for(Opportunity opp: Trigger.new){
        Opportunity oldOpp = Trigger.oldMap.get(opp.Id);
        if(opp.StageName == 'Closed Won' && oldOpp.StageName != 'Closed Won' && opp.AccountId != NULL){
        	accIds.add(opp.AccountId);
        }
    }
    
    Map<Id, Account> accMap = new Map<Id, Account>([SELECT Id, Active__c FROM Account where Active__c = 'NO' AND Id IN: accIds]);
    for(Opportunity opp: Trigger.new){
        Opportunity oldOpp = Trigger.oldMap.get(opp.Id);
        if(opp.StageName == 'Closed Won' && oldOpp.StageName != 'Closed Won' && opp.AccountId != NULL){
            Account acc = accMap.get(opp.AccountId);
            if(acc != NULL && acc.Active__c == 'NO'){
            	opp.StageName.addError('Cannor Close Deal, Related Account is Inactive.');
            }
        }
    }*/
    
     /*for (Opportunity opp : Trigger.new) {
        Opportunity oldOpp = Trigger.oldMap.get(opp.Id);

        // Check if deal is being moved to final stage
        if (opp.IsClosed == true &&
            oldOpp.IsClosed == false) {

            // Validate mandatory financial fields
            if (opp.Amount == null || opp.CloseDate == null) {
                opp.addError(
                    'Please fill all mandatory financial details before closing the deal.'
                );
            }
        }
    }*/
    
    /*Set<Id> accountIds = new Set<Id>();
    for(Opportunity opp: Trigger.new){
        Opportunity oldOpp = Trigger.oldMap.get(opp.Id);
        if(opp.StageName == 'Closed Won' && oldOpp.StageName != 'Closed Won' && opp.AccountId != NULL){
        	accountIds.add(opp.AccountId);
        }
    }
    if(accountIds.isEmpty()) return;
    Map<Id, Account> accMap = new Map<Id, Account>([SELECT Id, AnnualRevenue FROM Account Where Id IN: accountIds]);
    for(Opportunity opp: Trigger.new){
        if(opp.StageName == 'Closed Won' && Trigger.oldMap.get(opp.Id).StageName != 'Closed Won' && opp.AccountId != NULL && opp.Amount != NULL){
            Account acc = accMap.get(opp.AccountId);
            if(acc != NULL){
                acc.AnnualRevenue = opp.Amount;
            }
        }
    }
    update accMap.values();
    */
    
    /*List<Case> caseList = new List<Case>();
    for(Opportunity opp: Trigger.new){
        Opportunity oppOld = Trigger.oldMap.get(opp.Id);
        if(opp.StageName == 'Closed Won' && oppOld.StageName != 'Closed Won' && opp.AccountId != NULL){
            Case cs = new Case(Subject = 'Supported case for Sales Deal.', Origin = 'Email', Status = 'New', AccountId = opp.AccountId);
            caseList.add(cs);
        }
    }
    
    if(!caseList.isEmpty()){
        insert caseList;
    }*/
    
    /*Integer leadCount = [SELECT count() from Lead where Status = 'Open - Not Contacted'];
    for(Opportunity opp: Trigger.new){
        if(leadCount > 0){
            opp.addError('Cannot Create Opportunity. There are no open lead.');
        }
    }*/
    
   	/*for(Opportunity opp: Trigger.new){
        if(opp.Probability > 50){
            opp.LeadSource = 'Phone Inquiry';
        }
    }*/
    
    /*Set<Id> accIds = new Set<Id>();
    if (Trigger.isInsert || Trigger.isUpdate || Trigger.isUndelete) {
        for (Opportunity opp : Trigger.new) {
            if (opp.AccountId != null) {
                accIds.add(opp.AccountId);
            }
        }
    }
    if (Trigger.isDelete || Trigger.isUpdate) {
        for (Opportunity opp : Trigger.old) {
            if (opp.AccountId != null) {
                accIds.add(opp.AccountId);
            }
        }
    }

    if (accIds.isEmpty()) return;

    Map<Id, Integer> accOppCount = new Map<Id, Integer>();

    for (AggregateResult ar : [
        SELECT AccountId accId, COUNT(Id) total
        FROM Opportunity
        WHERE AccountId IN :accIds
        GROUP BY AccountId
    ]) {
        accOppCount.put(
            (Id) ar.get('accId'),
            (Integer) ar.get('total')
        );
    }

    List<Account> accList = new List<Account>();

    for (Id accId : accIds) {
        Account acc = new Account();
        acc.Id = accId;
        acc.Total_Opps_Count__c =
            accOppCount.containsKey(accId) ? accOppCount.get(accId) : 0;
        accList.add(acc);
    }

    if (!accList.isEmpty()) {
        update accList;
    }*/
    
    /*for(Opportunity opp: Trigger.new){
        Opportunity oldOpp = Trigger.OldMap.get(opp.Id);
        if(oldOpp.Amount != opp.Amount && oldOpp.Amount != NULL){
            
        }
    }*/

    /*for(Opportunity opp: Trigger.new){
        if(opp.Amount < 0){
            opp.Amount.addError('Please give the Positive number.');
        }
    }*/
    /*List<Account> accList = new List<Account>();
    for(Opportunity opp: Trigger.new){
        Opportunity oldOpp = Trigger.OldMap.get(opp.Id);
        if(opp.StageName == 'Closed Won' && oldOpp.StageName != 'Closed Won'){
            Account acc = new Account(Name = opp.Name, Id = opp.AccountId, Last_Deal_Amount__c = opp.Amount);
        	accList.add(acc);
        }
    }
    if(!accList.isEmpty()){
        update accList;
    }*/
    
    /*Set<Id> Ids = new Set<Id>();
    for(Opportunity opp: Trigger.new){
        Ids.add(opp.AccountId);
    }
    
    Map<Id, Account> accMap = new Map<Id, Account>([SELECT Id, Active__c From Account WHERE Id IN: Ids]);
    for(Opportunity opp: Trigger.new){
        if(opp.StageName == 'Closed Won' && accMap.get(opp.AccountId).Active__c == 'No'){
            opp.addError('Account is inactive.');
        }
    }*/
}