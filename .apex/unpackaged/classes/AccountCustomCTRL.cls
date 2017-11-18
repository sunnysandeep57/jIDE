public with sharing class AccountCustomCTRL {

    public String accountPhone { get; set; }

    public String accountName { get; set; }
    
    
     public PageReference CreateAccount() {
        if(accountName !='' && accountPhone !='' ){
        Account acc = new Account(name=accountName, phone=accountPhone);
        insert acc;
        PageReference pg = new PageReference('/'+acc.id);
        return pg;
        Apexpages.addmessage(new apexpages.message(apexpages.severity.CONFIRM,'Account Saved'));
        return null;
        }
        else{
            Apexpages.addmessage(new Apexpages.message(apexpages.severity.WARNING, 'Please enter all values'));
            return null;
        }
     
      
      return null;
    }
}