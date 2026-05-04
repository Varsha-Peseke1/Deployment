trigger TriggerOnInstructor on Instructor__c (before insert) {
    for(Instructor__c ins: Trigger.new){
        if(ins.Salary__c > 50000){
            ins.Discount__c = 10;
        }
    }
}