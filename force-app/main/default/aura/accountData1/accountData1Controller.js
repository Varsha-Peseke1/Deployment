({
	doInit : function(component, event, helper) {
		var action =component.get("c.getAccounts");
        action.setCallback(this, function(response){
            //var state = response.getState();
            if(response.getState() === "SUCCESS"){
                component.set("v.accList", response.getReturnValue());
            }           
        });
        $A.enqueueAction(action);
	}
})