@isTest
public class OppProcessorTest {
    @isTest
    private static void testBatchClass(){
        List<Opportunity> oppList = new List<Opportunity>();
        for(Integer i = 0; i <= 200; i++){
            Opportunity opp = new Opportunity();
            opp.Name = 'dummy' + i;
            opp.CloseDate = System.today();
            opp.StageName = 'Prospecting';
            oppList.add(opp);
        }
        
        Test.startTest();
        insert oppList;
        OppProcessor oppProcess = new OppProcessor();
        Id batchId = Database.executeBatch(oppProcess, 500);
        Test.stopTest();
        
        List<Opportunity> oppor = [
            SELECT Id FROM Opportunity WHERE LeadSource = 'Web'
        ];
        System.assertEquals(201, oppor.size());    }
}