trigger TriggersOnContact on Contact (after insert) {
    List<Opportunity> oppList = new List<Opportunity>();
    for(Contact con: Trigger.new){
        if(con.AccountId != NULL){
            Opportunity opp = new Opportunity();
            opp.CloseDate = system.Today();
            opp.Name = con.LastName;
            opp.StageName = 'Prospecting';
            opp.AccountId = con.AccountId;
            oppList.add(opp);
        }
    }
    if(!oppList.isEmpty()){
        insert oppList;
    }
}