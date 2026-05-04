trigger TriggersOnLeads on Lead (before delete) {
    
    for(Lead ld: Trigger.old){
        if(ld.Status == 'Closed - Converted'){
            ld.addError('Cannot Delete the Lead which is converted.');
        }
    }
    
    /*for(Lead ld: Trigger.new){
        if(Ld.LeadSource == 'Web'){
            Ld.Lead_Check__c = true;
        }
    }*/
    
    /*for(Lead ld: Trigger.new){
        if(ld.Company != NULL){
            ld.Status = 'Open - Not Contacted';
        }
    }*/
    
    /*for(Lead ld: Trigger.new){
        if(ld.LeadSource == 'Web'){
            ld.Lead_Check__c = true;
        }
    }*/
    
    /*for(Lead l: Trigger.new){
        if(l.Company != NULL){
            l.Status = 'Open - Not Contacted';
        }
    } */
    
    /*for(Lead l: Trigger.new){
        if(l.MobilePhone != NULL){
            String phoneLength = l.MobilePhone.replaceAll('[^0-9]', '');
            if(phoneLength.Length() != 10 || phoneLength.Length() >10){
                l.MobilePhone.addError('Phone must contains exactly 10 digits.');
            }
        }
    }*/
    
    /*for(Lead ld: Trigger.new){
        if(ld.LeadSource == 'Web'){
            ld.Lead_Check__c = true;
        }
    }*/
    
    /*for(Lead ld: Trigger.new){
        Lead oldLead = Trigger.oldMap.get(ld.Id);
        if(ld.Company != oldLead.Company && ld.Company != NULL){
            ld.Status = 'Working - Contacted';
        }
    }*/
    
    /*for(Lead ld: Trigger.new){
        if(ld.Phone != NULL){
            String phoneLength = ld.Phone.replaceAll('[^0-9]', '');
            if(phoneLength.Length() != 10){
                ld.Phone.addError('Phone must contains exactly 10 digits.');
            }
        }
    }*/
    
    /*for(Lead ld: Trigger.new){
        if(ld.company == NULL){
            ld.Company.addError('Please Provide Company.');
        }
    }*/
    
    /*List<Lead> leadList = new List<Lead>();
    for(Lead l: Trigger.new){
        Lead oldLead = Trigger.OldMap.get(l.Id);
        if(l.Status != oldLead.Status){
            leadList.add(new Lead(Id = l.Id, Description = 'Status is changed from '+ oldLead.Status + ' to ' + l.Status));
        }
    }
    if(!leadList.isEmpty()){
        update leadList;
    }*/
    
    /*for(Lead l:Trigger.new){
        Lead oldLead = Trigger.OldMap.get(l.Id);        
        if(oldLead.Status == 'Open - Not Contacted' && (l.Status == 'Closed - Converted' || l.Status == 'Closed - Not Converted') && String.isBlank(l.Reason__c)){
            l.Status.addError('Reason Must be filled if you change the status');
        }
    }*/
    
    /*for(Lead ld: Trigger.new){
        if(ld.leadSource == 'Web'){
            ld.leadSource = 'Website';
        }
    }*/
    
    /*Id queueId = '1';
    for(Lead ld: Trigger.new){        
        if(ld.Company == 'India'){
            ld.OwnerId = queueId;
        }
    }*/
    
    /*Integer caseCount = [SELECT count() from Case where Status != 'Closed'];
    for(Lead ld: Trigger.new){
        if(caseCount > 5){
            ld.addError('Cannot create Lead. More cases are there.');
        }
    }*/
}