public class ContactController {
	private String sortRecord = 'FirstName';
    public List<Contact> getContacts(){
        List<Contact> conList = Database.query(
            'SELECT Id, FirstName, LastName, Email ' + 
            'FROM Contact ' + 
            'ORDER BY ' + sortRecord + ' ASC ' +
            'LIMIT 10'
        );
        return conList;
    }
    public void sortByFirstName(){
        this.sortRecord = 'FirstName';
    }
    public void sortByLastName(){
        this.sortRecord = 'LastName';
    }
    public void sortByEmail(){
        this.sortRecord = 'Email';
    }
}