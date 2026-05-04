public class AccountCalculator {

    @future
    public static void countContacts(List<Id> accIds){

        List<Account> accList = [
            SELECT Id, Active__c, (SELECT Id FROM Contacts)
            FROM Account
            WHERE Id IN :accIds
        ];

        for(Account acc : accList){
            if(acc.Active__c == NULL){
                acc.Active__c = 'Yes';
            }
            acc.Count_No_Of_Contacts__c = acc.Contacts.size();
        }

        if(!accList.isEmpty()){
            update accList;
        }
    }
}