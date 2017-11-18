public class orgWSDL {
	public Account orgA { get; set; }  
    public orgWSDL(){
        orgA = new Account();
    }
    
    public void submit() {
        
        //Get the User details from custom settings
        List<User_config__c> lstU = User_config__c.getAll().values();
        
        //Get the sessionId from soap Login result
        partnerSoapSforceComPradeep.soap soap1 = new partnerSoapSforceComPradeep.soap();
        partnerSoapSforceComPradeep.LoginResult loginresult;
        for(User_config__c usr :lstU){
            if(usr.name =='arpradeep57@sales.com'){
                loginresult = soap1.login(usr.name,usr.password__c+usr.sToken__c);
            system.debug(loginresult.sessionId);
            System.debug(UserInfo.getOrganizationId().substring(0, 15) + ' ' +  UserInfo.getSessionId().substring(15));
            }
            //system.debug(loginresult.sessionID);           
        }    
        string sessionId = loginresult.sessionId;
        //system.debug('------>>>>>session id :'+sessionId+'<<<<<<<<-----------');
        
        
        //CustomerWrap Class        
        soapSforceComSchemasClassTelecustomPrade.customerwrap cWrap = new soapSforceComSchemasClassTelecustomPrade.customerwrap();
        List<soapSforceComSchemasClassTelecustomPrade.customerwrap> wrapList = new List<soapSforceComSchemasClassTelecustomPrade.customerwrap>();
        cWrap.custname  = orgA.name;
        cWrap.custPhone = orgA.phone;
        wrapList.add(cWrap);
    
        //Pass the sessionId to the sessionheader element Class
        
        soapSforceComSchemasClassTelecustomPrade.SessionHeader_element Header1 = new soapSforceComSchemasClassTelecustomPrade.SessionHeader_element();
        Header1.sessionId = sessionId;
        
        //Call the Innermain class and assign the headerElement to it 
        
        soapSforceComSchemasClassTelecustomPrade.TeleCustomRed cust = new soapSforceComSchemasClassTelecustomPrade.TeleCustomRed();
        cust.SessionHeader = Header1;
        string response = cust.newcustommethod(wrapList);
        if(response == 'Success'){
        Insert orgA;
        }     
        
    }
}