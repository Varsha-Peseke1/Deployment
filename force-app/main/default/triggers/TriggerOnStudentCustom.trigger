trigger TriggerOnStudentCustom on Student__c (before insert) {
    for(Student__c stu: Trigger.new){
        /*if(stu.Entrance_Score__c != NULL && stu.Entrance_Score__c <= 0){
            stu.Entrance_Score__c.addError('Entrance Score Should be Positive.');
        }*/
        stu.Name__c = stu.Name__c.trim();
    }
}