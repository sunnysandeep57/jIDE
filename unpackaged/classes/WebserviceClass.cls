Global class WebserviceClass {
    webservice static Id mymethod(string accname, string phone){
        
        Account acc = new Account();
        //sObject sObj = Schema.getGlobalDescribe().get(Customers__c).newSObject() ;
        acc.Name = accname;
        acc.phone = phone;
        insert acc;
        return acc.id;   
    }
}