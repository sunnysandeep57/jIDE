@RestResource(urlMapping='/showAccounts/*')

Global class checkAccount{
    
    @HttpGet
    Global Static List<Account> getAccount(){
    	RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;        
        String accountId = req.requestURI.substring(req.requestURI.lastIndexof('/')+1);
        system.debug('Account Id:'+accountId);
        List<Account> result =[select id,name,phone from account ];
		return result;
    }
    
    @HttpPost
    Global static List<Account> doPost(List<string> name, List<string> phone, List<string> Accountnumber ){
    	List<account> accList = new List<Account>();
        /*for(Account acc:accList){
            acc.name = name;
            acc.phone = phone;
            acc.accountnumber = accountnumber;
            accList.add(acc);
        }
        insert accList;*/
        for(integer i=0; i<name.size();i++){
            Account acc = new Account();
            acc.name = name.get(i);
            acc.phone = phone.get(i);
            acc.accountnumber =accountnumber.get(i);
            accList.add(acc);
        }
        insert accList;  
        return accList;     
    } 
    
    @HttpDelete
    
    global static void doDelete(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        string accountID = req.requestURI.substring(req.requestURI.lastIndexof('/')+1);
        Account acc = [select id,name from account where id=:accountID];
        delete acc;        
    }
}