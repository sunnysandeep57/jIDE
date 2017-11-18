public class DMLinsert {
    public static string  k = '.uk';
    public static List<Account> insertAccount(){
        List<Account> listAcc = new List<Account>();
        for(integer i=14; i<16; i++){
            Account acc = new Account();
            acc.Name = 'TCS'+i+k; 
            listAcc.add(acc);
        }
        //insert listAcc;
        return listAcc;
    }
    public static List<Account> insertAccount2(){
        List<Account> listAcc2 = new List<Account>();
        integer j =23;
        do{
            Account acc1 = new Account();
            acc1.name	 = 'BA'+j+k;
            listAcc2.add(acc1);
            j--;
        }while(j>=21);
        //insert listAcc2;
        return listAcc2;
    }
    public static List<Account> addList(){
        List<Account> listAdd = new List<Account>();
        listAdd.addAll(insertAccount());
        listAdd.addAll(insertAccount2());
        insert listAdd;
        return listAdd;
    }   
}