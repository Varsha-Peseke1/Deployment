trigger AccountApexTriggers on Account (before insert, after insert, before update, after Update) {
    /*if(Trigger.isInsert){
        if(Trigger.isBefore){
            AccountTriggerHandler.updateDesc(Trigger.new);
            AccountTriggerHandler.populateRating(Trigger.new, NULL);
        } else if(Trigger.isAfter){
            AccountTriggerHandler.createRelatedOpp(Trigger.new);
            AccountTriggerHandler.createTask(Trigger.new);
        }
    }
    if(Trigger.isUpdate){
        if(Trigger.isBefore){
            AccountTriggerHandler.updatePhone(Trigger.new, Trigger.oldMap);
            AccountTriggerHandler.populateRating(Trigger.new, Trigger.oldMap);
        } else if(Trigger.isafter){
            // AccountTriggerHandler.updateRelatedContact(Trigger.new, Trigger.oldMap);
        }
    }
    if(Trigger.isDelete){
        if(Trigger.isBefore){
			AccountTriggerHandler.preventDeletion(Trigger.old);
        }
    }*/
}