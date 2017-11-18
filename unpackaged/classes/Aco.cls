public class Aco {
    public static string k = '.acc';
    public static string l = '.con'; 
    public static string m = '.opr'; 
    public static List<Account> insertAccount(){
        List<Account> listAcc = new List<Account>();
        for(integer i=18; i<20; i++){
            Account acc = new Account();
            acc.Name = 'GMS'+i+k; 
            listAcc.add(acc);
        }
        //insert listAcc;
        return listAcc;
    }
    public static List<Contact> insertContact(){
        List<Contact> listCon = new List<Contact>();
        integer j =23;
        do{
            Contact con = new Contact();
            con.Lastname	 = 'SFUser'+j+l;
            listCon.add(con);
            j--;
        }while(j>=21);
        //insert listCon;
        return listCon;
    }
    
    public static List<Opportunity> insertOpportunity(){
        List<Opportunity> listOppr = new List<Opportunity>();
        integer j =23;
        do{
            Opportunity opr = new Opportunity();
            opr.name='oppr'+j+m;
            //opr.CloseDate = System.today() + 5;
            opr.CloseDate = date.today() + 5;
            opr.StageName ='Prospecting';
            listOppr.add(opr);
            j--;
        }while(j>=21);
        //insert listOppr;
        return listOppr;
    }
    
    public static List<sObject> addList(){
        
        List<sObject> newList = new List<sObject>();
        newList.addAll((List<sObject>)(insertAccount()));
        newList.addAll((List<sObject>)(insertContact()));
        newList.addAll((List<sObject>)(insertOpportunity()));
        //insert newList;
        return newList; 
    }   
    
    public static void splitList(){
        
        List<Account> act = new List<Account>();
        List<Contact> cnt = new List<Contact>();
        List<Opportunity> opu = new List<Opportunity>();
        for(sObject sobj : addList()){
            if(sobj instanceof Account){
                act.add((Account)sobj);
            }
            else if (sobj instanceof Contact){
                cnt.add((contact)sobj);
            }
            else
                opu.add((Opportunity)sobj);
        }
        system.debug('Account: '+act);
        system.debug('Contact: '+cnt);
        system.debug('Oppurtunity: '+opu);
        
    }
}