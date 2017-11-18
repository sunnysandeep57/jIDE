public class dbsObject {
    
    public static void createAccount(List<Account> accList){
        set<Id> accId = new set<Id>();
        for(Account acc:accList){
            //accId.add(acc.ID);
            acc.Description ='Description added through database';
        }
        
        databaseError(accList,true);
        updateContact(accList);
        
        //return accList;
    }
    
    public static void updateContact(List<Account> accList){
        set<ID> accIds = new Set<ID>();
        for(Account acc:accList){
            accIds.add(acc.ID);
        }
        List<contact> conList = [select phone from contact where accountID in :accids];
        for(Account acc1:accList){
            for(contact con:conList){
                con.phone =acc1.phone;
                con.LastName= 'LASTNAME'+acc1.name;
                con.accountId = acc1.ID;
                //conList.add(con);
            }
            //update conList;
            databaseError(ConList,false);       
        }
    }
    
    public static void databaseError(List<sObject> ListAc,boolean flag){
        List<Database.SaveResult> srList = new List<Database.SaveResult>();
        if(flag){
            srList = database.insert(ListAc,false);
        }
        
        else{
             srList = database.update(ListAc,false);
        }
        
        for(Database.SaveResult sr : srList){
            if(sr.issuccess()){
                system.debug('Record inserted Successfully :' +sr.getId());
            }
            else{
                for(Database.Error err : sr.getErrors()){
                    system.debug(err.getstatuscode() + ':' +err.getMessage());
                    system.debug('Account fileds are :' +err.getFields());
                }
                
            }
        }
        
    }
}