trigger TriggersOnCase on Case (before insert, before update) {
    
    /*for(Case cs : Trigger.new){
        if(cs.Subject == NULL){
            cs.Subject.addError('Subject is Required.');
        }
    } */
    
    /*Integer num = 1;
    List<Case> caseList = [SELECT Case_Auto_Number__c FROM Case WHERE Case_Auto_Number__c != NULL ORDER BY CreatedDate DESC LIMIT 1];
    if(!caseList.isEmpty()){
        String lastValue = caseList[0].Case_Auto_Number__c;
        String digitsOnly = lastValue.replaceAll('[^0-9]', '');
        if(digitsOnly != ''){
            num = Integer.valueOf(digitsOnly) + 1;
        }
    }
    for(Case cs : Trigger.new){
        cs.Case_Auto_Number__c = 'CASE' + num;
        num++;
    }*/
    
    /*for(Case cs: Trigger.new){
        if(cs.Origin == NULL){
            cs.Origin = 'Phone';
        }
    }*/
    
    /*for(Case cs: Trigger.new){
        if(cs.Subject == NULL){
            cs.Subject.addError('Please Provide Subject.');
        }
    }*/
    
    /*for(Case cs: Trigger.new){
        if(cs.Subject == NULL){
            cs.Subject = 'Phone';
        }        
    }*/
    
    /*Integer numberNxt = 1;
    List<Case> lastCase = [SELECT Case_Auto_Number__c FROM Case WHERE Case_Auto_Number__c != NULL ORDER BY CreatedDate DESC LIMIT 1];
    if(!lastCase.isEmpty()){
        String lastNum = lastCase[0].Case_Auto_Number__c.replace('CASE-', '');
        numberNxt = Integer.valueOf(lastNum) + 1;
    }
    for(Case cs: Trigger.new){
        cs.Case_Auto_Number__c = 'CASE-' + String.valueOf(numberNxt);
        numberNxt++;
    }*/    
    
    /*for(Case cs: Trigger.new){
        if(cs.Priority == 'High'){
            cs.Status = 'Escalated';
        }
    }*/
    
    /*Set<Id> caseIds = new Set<Id>();
    for(Case cs: Trigger.new){
        Case oldCase = Trigger.oldMap.get(cs.Id); 
        if(cs.AccountId != NULL){
            caseIds.add(cs.AccountId);
        }
    }
    
    Map<Id, Account> accMap = new Map<Id, Account>([SELECT Id, Name FROM Account WHERE Id IN: caseIds]);
    for(Case cs: Trigger.new){
        Account acc = accMap.get(cs.AccountId);
        if(cs.AccountId != NULL && accMap.containsKey(cs.AccountId)){
            cs.Case_Summary__c = accMap.get(cs.AccountId).Name;
        }
    }*/
    
    /*for(Case c: Trigger.new){
        if(c.Priority == 'High'){
            c.Status = 'Escalated';
        }
    }*/
    
    /*for(Case c: Trigger.new){
        Case caseOld = Trigger.oldMap.get(c.Id);
        if(c.AccountId != NULL && c.Priority == 'High' && caseOld.Priority != 'High'){
            c.High_Priority_Since__c = System.now();
        }
        
        if(c.Priority == 'High' && c.High_Priority_Since__c != NULL && c.High_Priority_Since__c < System.now().addDays(-2)){
            c.Status = 'Escalated';
        }
    }*/    
    
    /*for(Case c: Trigger.new){
        Case caseOld = Trigger.OldMap.get(c.Id);
        if(c.Subject == NULL && c.IsClosed == true && caseOld.IsClosed == false){
            c.Subject.addError('Please fill this field.');
        }
    }*/
    
    /*for(Case c: Trigger.new){
        if(c.Origin == NULL){
        	c.Origin = 'Email';
        }
    }*/
    
    /*for(Case c: Trigger.new){
        c.Case_Summary__c = c.Subject;
    }*/
    
    /*for(Case cs: Trigger.new){
        if(cs.Subject == 'Urgent' && cs.Subject != NULL){
            cs.Priority = 'High';
        }
    }*/
    
    /*for(Case cs: Trigger.new){
        Case oldCase = Trigger.oldMap.get(cs.Id);
        if(cs.Status == 'Escalated' && oldCase.Status != 'Escalated' && cs.Description == NULL){
            cs.Description.addError('please give the reason for escalating.');
        }
    }*/
    
    /*for(Case cs: Trigger.new){
        if(cs.Origin == 'Email'){
            cs.Status = 'new';
        }
    }*/
    
    /*for(Case cs: Trigger.new){
        cs.Created_By_User__c = UserInfo.getName();
    }*/
    
    /*Integer oppCount = [SELECT count() from Opportunity];
    for(Case cs: Trigger.new){
        if(oppCount < 50){
            cs.Priority = 'Low';
        } else if(oppCount < 200){
            cs.Priority = 'Medium';
        } else {
            cs.Priority = 'High';
        }
    }*/
    
}