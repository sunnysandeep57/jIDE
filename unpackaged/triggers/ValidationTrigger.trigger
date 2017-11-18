trigger ValidationTrigger on Contact (before insert) {
    
    Contact con = trigger.new[0];
    if(con.Email==null && con.phone==NULL && con.HomePhone==NULL){
        con.EMail.addError('Email Address is Empty');
        con.Phone.addError('Provide Phone Number');
    }

}