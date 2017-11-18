trigger UpdatePhone on Account (After insert,After Update){
    
    List<Account> accList = trigger.new;
    Account acc = accList.get(0);
    List<Contact> conList =[select name,accountID from contact where accountId=:acc.Id];
    if(ReccursiveClass.flag){
        ReccursiveClass.flag = false;
        if(conList.size() !=0){
            for(Contact con:conList){
                con.Phone=acc.Phone;   
            }
            update conList;
        }
        else{
            contact con =new contact();
            con.Lastname = 'SASFCon'+acc.name;
            con.phone=acc.phone;
            con.accountId =acc.ID;
            conList.add(con);
            insert conList;
        }    
    }
}