trigger TriggersOnOpps on Opportunity (after update) {
    List<Account> accList = new List<Account>();
   	Set<Id> oppIds = new Set<Id>();
    for(Opportunity opp: Trigger.new){
        Opportunity oppOld = Trigger.OldMap.get(opp.Id);
        if(oppOld.StageName != opp.StageName && opp.StageName == 'Closed Won'){
        	oppIds.add(opp.AccountId);
        }
    }
    
    List<Account> acc = [SELECT Id, Type from Account WHERE Id IN: oppIds];
    for(Account a: acc){        
        a.Type = 'Customer - Direct';
        accList.add(a);
    }
    
    if(!accList.isEmpty()){
        update accList;
    }
}