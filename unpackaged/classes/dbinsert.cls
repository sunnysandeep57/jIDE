public class dbinsert {

    public static void createAccount(List<Account> accList){
        set<Id> accId = new set<Id>();
        for(Account acc:accList){
            //accId.add(acc.ID);
            acc.Description ='Description added through database';
        }
        databaseError(accList);
        //return accList;
    }
    
    public static void databaseError(List<Account> ListAc){
        List<Database.SaveResult> srList = database.insert(ListAc,false);
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