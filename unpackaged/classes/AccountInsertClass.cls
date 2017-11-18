@RestResource(UrlMapping='/PostAccountMethod/*')
global with sharing class AccountInsertClass {
    
    @HTTPPost
    global static List<Account> postMethod(string name, string phone){
        string status;        
        List<Account> accList = new List<Account>(); 
        /*List<Account> JsonDe = (List<Account>)json.deserialize(lstW, List<Account>.class);
        system.debug(JsonDe);
        for(Account str:jsonDe){
            Account act = new Account();
            act.Name = str.Name;
            act.Phone = str.Phone;  
            accList.add(act);
        }*/
        try{
            status = 'Success';
            insert accList;
            return accList;
        }
        catch(Exception e){
            status = 'Record not Inserted';
            return NULL;
        }
        
    }
    //string ab ='[{\"Name\":\"SSSSSSSS REST DEMO1\",\"phone\":\"1234567899\"}]';
    //AccountInsertClass.postMethod(ab); 
}