trigger TriggersOnLeads1 on Lead (before insert) {
    for(Lead l: Trigger.new){
        if(l.Email == NULL){
            l.Email.addError('Please Provide Company field.');
        }
    }
}