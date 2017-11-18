public class DML {
    public static string val1='.edu'; 
    public static string val2='.csulb'; 
    public static List<Account> insertAccount1(){
        List<Account> listAcc1 = new List<Account>();
        for(integer i=0;i<2;i++){
            Account acc = new Account();
            acc.name = 'AAA'+i+val1;
            listAcc1.add(acc);
        }
        //insert listAcc1;
        return listAcc1;
    }
    
    public static List<Account> insertAccount2(){
        List<Account> listAcc2 = new List<Account>();
        for(integer i=0;i<2;i++){
            Account acc = new Account();
            acc.name = 'BBB'+i+val2;
            listAcc2.add(acc);
        }
        //insert listAcc2;
        return listAcc2;
    }
    
    public static List<Account> addAccount(){
        List<Account> listAdd = new List<Account>();
        listAdd.addAll(insertAccount1());
        listAdd.addAll(insertAccount2());
        //insert listAdd;
        return listAdd;
    }
    
    public static List<sObject> listAdd(){
        List<sObject> newList = new List<sObject>();
        newList.addAll((List<sObject>)(insertAccount1()));
        newList.addAll((List<sObject>)(insertAccount2()));
        system.debug(newList);
        //insert newList;
        return newList;    
    }
}