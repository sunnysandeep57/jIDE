Global class SampleWebserviceClass {
    webservice static Id mymethod(string accname, string phone){
        
        Account acc = new Account();
        acc.Name = accname;
        acc.phone = phone;
        insert acc;
        return acc.id;   
    }
}