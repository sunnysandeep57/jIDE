@isTest
public class CreateOpportunityTest {
    
    private static TestMethod void myMethod(){
        
        Account acc= globalTest.createaccount(false);
        insert acc;
        List<Opportunity> oppList = [select id from opportunity where AccountId=:acc.id];
        system.assertEquals(1, oppList.size());
        test.startTest();

        Account acc2 = new Account(name='TESTACC' ,accountnumber ='ACCNUM',Rating='Warm');
        insert acc2;
        List<Contact> conList = [select id,lastname from contact where AccountId=:acc2.id];
        system.assertEquals(1,conList.size());
        test.Stoptest();

    }
    private static TestMethod void myMethod2(){
        
        List<Account>  acc= globalTest.accountList(1,false);
        insert acc;
        set<Id> acId =new Set<Id>();
        for(Account aid:acc){
            acId.add(aid.id);
        }
        system.debug('PRADEEP'+acId.size());      
        List<Opportunity> oppList = [select id from opportunity where AccountId in :acId];
        system.assertEquals(151, oppList.size());
        system.debug('Opp size is >>>'+oppList.size());
        test.startTest();

        List<Account> acc2 = globalTest.accountList(1,false);
        for(Account ac2:acc2){
            ac2.Rating='Warm';
        }
        insert acc2;
        set<Id> acId1 =new Set<Id>();
        for(Account aid1:acc2){
            acId1.add(aid1.id);   
        }
        system.debug('PRADEEP:'+acId1.size());       
        List<Contact> conList = [select id,lastname from contact where AccountId in:acId1];
        system.debug('con size is >>>'+conList.size());
        system.assertEquals(151,conList.size());
        test.Stoptest();

    }
}