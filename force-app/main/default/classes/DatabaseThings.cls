public class DatabaseThings {
    public static void databaseInsert(){
        List<Contact> conList = new List<Contact>{
            new Contact(FirstName= 'jjjj', LastName= 'llll', Department = 'Finance'),
                new Contact(FirstName= 'jjjj', LastName= 'llll', Department = 'Finance'),
                new Contact(FirstName= 'jjjj', LastName= 'llll', Department = 'Finance'),
                new Contact()};
                    Database.SaveResult[] srList = Database.insert(conList);
        for(Database.SaveResult sr: srList){
            if(sr.isSuccess()){
                System.debug('Successfully Inserted' + sr.getId());
            } else {
                for(Database.Error err: sr.getErrors()){
                    System.debug('Error Occurred');
                    System.debug(err.getStatusCode() + ':' + err.getMessage());
                    System.debug('Contact fields error' + err.getFields());
                    
                }
            }
        }
    }

}