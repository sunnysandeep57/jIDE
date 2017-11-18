@RestResource(urlMapping='/Democlass')
global class RestDemoClass {
    @HTTPGet
    global static List<Account> getAccounts(){      
        List<Account> accList = [select id,name,phone from account LIMIT 1];
        system.debug(accList);
        string JsonSe = JSON.serialize(accList);
        system.debug('Serialize>>>'+JsonSe);            
        wrapClass jsonBody;
        //Object accL = JSON.deserializeUntyped(Jsonse);
        List<wrapClass> accL = (List<wrapClass>)JSON.deserialize(Jsonse,List<wrapClass>.class);
        List<Account> AccountaccL = (List<Account>)JSON.deserialize(Jsonse,List<Account>.class);
        List<Object> accL1 = (List<Object>)JSON.deserializeUntyped(Jsonse);
        //jsonBody = (wrapClass) JSON.deserialize(request.requestBody.toString(),wrapClass.class);
        System.debug('DESErialize' +accL);
        system.debug(accList);
        system.debug(accL1);
        return accList;
    }
    
    @HTTPPost    
    global static string PostWrapper(List<wrapClass> listW){
        string Status ='';
        List<Account> accList = new List<Account>();
        for(wrapClass wrp:listw){
            account acc = new account();
            acc.name = wrp.name;
            acc.phone = wrp.phone;
            accList.add(acc);
        }
        try{
            insert accList;
            status = 'Success';
            return status;
        }
        Catch(Exception e){
            status = 'Failure';
            return 'failure and the' +status+ '';
        }
    }
    
    global class wrapClass{
        global string Id;
        global string Name;
        global string Phone;
    }
}