public class CreateAccountThroughList {
    public static void createAccount(){
        List<Account> accList = new List<Account>();
        accList.add(new Account(Name = 'Account One', Active__c = 'Yes'));
        accList.add(new Account(Name = 'Account Two', Active__c = 'Yes'));
        accList.add(new Account(Name = 'Account Three', Active__c = 'Yes'));
        insert accList;
    }
}