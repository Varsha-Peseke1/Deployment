public class DailyOppProcessor implements Schedulable{
    public void execute(SchedulableContext sc){
        List<Opportunity> oppList = [SELECT Id, LeadSource FROM Opportunity WHERE LeadSource = null LIMIT 200];
        for(Opportunity opp: oppList){
            opp.LeadSource = 'Web';
        }
        if(!OppList.isEmpty()){
            update oppList;
        }
    }
}