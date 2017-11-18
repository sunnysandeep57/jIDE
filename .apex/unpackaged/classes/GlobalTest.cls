public class GlobalTest {
    
    public static account createaccount(boolean isinsert){
        Account acc =new account(name ='GlobalAccount',Accountnumber ='GlobalNumber',Rating='Hot');
        if(isinsert){
            insert acc;
        }
        return acc;
    }
    
    public static List<Account> accountList(integer count,boolean isinsert){
		List<Account> accList =new List<account>();
        for(;count<152;count++){    
           	Account acc =new account(name ='GlobalAccount',Accountnumber ='GlobalNumber',Rating='Hot');
            if(isinsert){
                insert acc;
            }
            accList.add(acc);
        }
        return accList;
    }
    
 



}