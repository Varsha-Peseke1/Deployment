trigger AccountRating on Account (after update) {
    if(trigger.isafter && trigger.isupdate){
        Set<Id> accid =New set<Id>();
        for(Account acc:trigger.new){
            if(Acc.Rating != trigger.oldmap.get(acc.id).Rating){
                accid.add(acc.Id);
            }
        }
    }
    

}