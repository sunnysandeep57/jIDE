public class RegisterCustomer {
    public Account objA { get; set; }
    public RegisterCustomer(){
        objA = new Account();
    }
    
    public void submit(){
        //get user details from custom settings
        List<user_config__c> lstU = User_Config__c.getAll().values();
        
        //soap class in partner wsdl and get the sessionId 
        partnerSoapSforceCom.soap soap1 = new partnerSoapSforceCom.soap();
        partnerSoapSforceCom.LoginResult loginresult;
        for(user_config__c usr : lstU){
            if(usr.name == 'sandeep.adhikariramesh@gmail.com'){
            loginresult = soap1.login(usr.Name,usr.Password__c+usr.stoken__c);
            }
        system.debug(loginresult);
        }
        string sessionID = loginResult.SessionId;
        
        //CustomerWrap class
        soapSforceComSchemasClassTelecustom.customerWrap newWrap = new soapSforceComSchemasClassTelecustom.customerWrap();
        List<soapSforceComSchemasClassTelecustom.customerWrap> newList = new List<soapSforceComSchemasClassTelecustom.customerWrap>();
        newWrap.customerName = objA.name;
        newWrap.customerPhone = objA.phone;
        newList.add(newWrap);
        
        //Pass sessionId to the Header_element class
        soapSforceComSchemasClassTelecustom.SessionHeader_element Header = new soapSforceComSchemasClassTelecustom.SessionHeader_element();
        Header.sessionId =  sessionID ;
        
        //Pass session header and customerWrap to the teleCustomerRegistration class
        soapSforceComSchemasClassTelecustom.teleCustomerRegistration telCustom = new soapSforceComSchemasClassTelecustom.teleCustomerRegistration();
        telCustom.SessionHeader = Header;
        string response = telCustom.newCustomerRegistration(newList);
        if(Response == 'Success'){
            insert objA;
        }
        
       
        
        
        
        
        }
}