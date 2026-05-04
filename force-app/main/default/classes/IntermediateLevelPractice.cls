public class IntermediateLevelPractice {
    public static void updateAccountPhone(List<Contact> conList){
		Set<Id> accIds = new Set<Id>();
        for(Contact con: conList){
            if(con.AccountId != NULL){
            	accIds.add(con.AccountId);
            }
        }
        Map<Id, Account> accMap = new Map<Id, Account>([SELECT Id, Phone FROM Account WHERE Id IN :accIds]);
        for(Contact con: conList){
            if(accMap.containsKey(con.AccountId)){
                accMap.get(con.AccountId).Phone = con.Phone;
            }
        }
        update accMap.values();
    }

    public static Map<Id, Integer> contactCountWithAccountId(){
        Map<Id, Integer> mapContactCount = new Map<Id, Integer>();
        List<AggregateResult> result = [SELECT AccountId, count(Id) totalContacts FROM Contact WHERE AccountId != null Group by AccountId];
        for(AggregateResult aggres: result){
            mapContactCount.put((Id)aggres.get('AccountId'), (Integer)aggres.get('totalContacts'));
        }
        System.debug(mapContactCount);
        return mapContactCount;
	}    
    
    public static void preventDuplicate(List<Contact> newList, Map<Id, Contact> oldMap){
        Set<String> emails = new Set<String>();
        for(Contact c : newList){
            if(c.Email != null){
                emails.add(c.Email.toLowerCase());
            }
        }
        Map<String, Contact> existingContacts = new Map<String, Contact>();
        for(Contact c : [SELECT Id, Email FROM Contact WHERE Email IN :emails]){
            existingContacts.put(c.Email.toLowerCase(), c);
        }
        for(Contact c : newList){
            if(c.Email != null && existingContacts.containsKey(c.Email.toLowerCase()) && (oldMap == null || c.Email != oldMap.get(c.Id).Email)){
                c.addError('Duplicate Contact with same Email exists.');
            }
        }
    }
    
    public static void bulkInsert(){        
        for(Integer i=0; i>=200; i++){
           	Account acc = new Account(Name = 'Single account', Active__c = 'Yes', Industry = 'Media');
        	Insert acc; 
        }
    }
}