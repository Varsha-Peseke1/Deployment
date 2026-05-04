trigger TriggerOnTask on Task (before insert, before update) {
    
    for(Task tk: Trigger.new){
        if(tk.ActivityDate != NULL && tk.ActivityDate == Date.today()){
            tk.Status = 'Completed';
        }
    }
    
    /*for(Task tk:Trigger.new){
        if(tk.ActivityDate != NULL && tk.ActivityDate == Date.today()){
            tk.Status = 'Completed';
        }
    }*/
    
    /*for(Task tk: Trigger.new){
        if(tk.ActivityDate != NULL && tk.ActivityDate == Date.today()){
            tk.Status = 'Completed.';
        }
    }*/
}