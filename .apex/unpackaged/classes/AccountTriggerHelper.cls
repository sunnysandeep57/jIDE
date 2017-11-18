public class AccountTriggerHelper{
    
    Public static void createOpp(List<Account> accList){
        Account acc = accList[0];
        Opportunity opp = new Opportunity();
        opp.name='Test Opp1';
        opp.StageName='Prospecting';
        opp.CloseDate=date.today()+5;
        opp.AccountId=acc.Id;
        insert opp;
        system.debug(opp);
    }
    
    public static void updateRating(List<Account> accList){
        Account acc = accList[0];
        acc.Rating='warm';    
    }
    
    public static void createContact(List<Account> accList){
        Set<ID> accIds = new Set<ID>();
        for(Account acc:accList){
            accIds.add(acc.ID);
        }
        List<contact> conList = [select phone from contact where accountID in :accids];
        for(Account acc1:accList){
            for(contact con:conList){
                con.phone =acc1.phone;
                con.LastName= 'LASTNAME'+acc1.name;
                con.accountId = acc1.ID;
                conList.add(con);
            }
            update conList;
            
        }
    }
}