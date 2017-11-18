public class SelectSOQL {
    
    public static List<Account> myMethod(){
        List<Account> accList = [select Id, Name, phone from Account];
        for(Account acc:accList){
            acc.Phone = '(999) 999-9999';
        }                
        update accList;
        return accList;    
    }
    
    public static void delMtd(){
        List<Account> accList = [select Id, Name, phone from Account where name Like '%.edu' ];
        delete accList;
        //return accList;
    }
    
    
}