@isTest
public class UpdatPhoneTest {
    
    private static testMethod void myMethod(){
        Account acc = new Account (name='Sandeep',accountnumber ='123123');
        insert Acc;    
        List<opportunity> oppList =[select id,closedate from opportunity where AccountId=:acc.Id];
        system.assertEquals(1, oppList.size());
    }    
}