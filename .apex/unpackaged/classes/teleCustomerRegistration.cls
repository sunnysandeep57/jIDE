global class teleCustomerRegistration{
    webservice static string newCustomerRegistration(List<customerWrap> cWrap){
        string status = '';
        List<Account> actList = new List<Account>();
        for(customerWrap objW :cWrap){
            Account act = new Account();
            act.name = objW.customerName;
            act.phone = objW.customerPhone;
            actList.add(act);
        }
        if(actList.size()>0){
            try{
                //insert actList;
                status = 'Success';
            }
            catch(Exception e){
                status = 'failure';
                system.debug('Records not udpated');
            }
        }
        return status;
    }
    
    global class customerWrap{
        webservice string customerName;
        webservice string customerPhone;
    }
    
    
    
    
}