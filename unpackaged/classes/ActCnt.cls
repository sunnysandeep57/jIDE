public class ActCnt {
    public static string k = '.edu';
    /*public static List<Account> accountDetails(){
List<Account> acc = new List<Account>();
return acc;
}

public static List<Contact> contactDetails(){
List<Contact> cnt = new List<Contact>();
return cnt;
}*/
    
    public static List<sObject> mergeList(){
        List<sObject> mList = new List<sObject>();
        for(integer i =1;i<2;i++){
            Account act= new Account();
            act.Name = 'SASFAcc5'+i+k;
            insert act;
            //mList.add(act);
            Contact con = new Contact();
            con.Lastname = 'SASFCon5'+i+K;
            con.accountId=act.Id;
            insert con; 
            Opportunity opt = new Opportunity();
            opt.name='SASFOpp5'+i+k;
            opt.CloseDate = date.today() + 5;
            opt.StageName ='Prospecting';
            opt.accountId=act.Id;
            insert opt;
            mList.add((Account)act);
            mList.add((contact)con);
            mList.add((Opportunity)opt);
        }
        system.debug(mList);
        return mList;
    }
    
    public static void splitList(){
        List<Account> acc = new List<Account>();
        List<Contact> con = new List<Contact>();
        List<Opportunity> opt = new List<Opportunity>();
        for(Sobject sObj :mergeList()){
            //system.debug(sObj);
            if(sObj instanceof Account){
                acc.add((Account)sObj);
            }
            else if(sObj instanceof Contact){
                con.add((contact)sObj);
            }
            else
                opt.add((Opportunity)sObj);            
        }
        system.debug(acc);
        system.debug(con);
        system.debug(opt);
    }
    
}