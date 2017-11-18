trigger DelAccount on Account (Before Delete) {
    
    List<Account> accList = trigger.old;
    Account acc= accList.get(0);
    List<Account> delAcc = [select name,Id from Account where id=:acc.ID];
    if(delAcc.size()>0){

        
        for(Account act:trigger.old){
         contact con = new contact();
        //FirstName = 'AAA'+Acc.Name,
        con.Lastname =Acc.name;
        con.Phone = Acc.Phone;
        //contact con = new contact();
        //con.Lastname='SFUUUUU';
        //con.phone='1231232'; 
        insert con;
        system.debug(con);
        }
        
        
    }
    
    
    else
        system.debug('Account Exists');
}