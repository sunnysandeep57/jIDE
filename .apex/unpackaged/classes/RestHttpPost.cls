public class RestHttpPost {
    public static void InsertCustomer(){
        String ConsumerKey = '3MVG9zlTNB8o8BA2kGeSt6KlYQ30qgV.s99chY0Wok8Nt.tj4mSCtyzPCrr7uv3rviy5Rx3mHd5MwgGYz3uWY'; 
        String ConsumerSecret = '1270743132729473035';
        List<User_Config__c> lstU = User_config__c.getAll().values();
        String UserName = lstU[0].name;
        String Password = lstU[0].password__c;
        String SToken = lstU[0].sToken__c;
        String serverURL = 'https://na59.salesforce.com';
        
        // https:// na69.salesforce.com /services/oauth2/token -d "grant_type=password" -d "client_id=myclientid" -d "client_secret=myclientsecret" 
        //   -d "username=mylogin@salesforce.com" -d "password=mypassword123456"
        
        String EndPointURL = '';
        EndPointURL += serverURL +'/services/oauth2/token?grant_type=password&client_id='+ConsumerKey+'&client_secret='+ConsumerSecret+'&username='+UserName+'&password='+Password+SToken;
        System.debug('EndPointURL--->'+EndPointURL);
        
        HTTPRequest req = new HTTPRequest();
        req.setEndpoint(EndPointURL);
        req.setMethod('POST');
        
        HTTP HttpParam = new HTTP();
        HTTPResponse response = HttpParam.send(req);
        String strBody = response.getBody();
        System.debug('strBody ------->'+strBody); 
        System.debug(UserInfo.getOrganizationId().substring(0, 15) + ' ' +  UserInfo.getSessionId().substring(15));
        
        
        JSONParser parser = JSON.createParser(strBody);
        String accsToken;
        while (parser.nextToken() != null) {
            if ((parser.getCurrentToken() == JSONToken.FIELD_NAME) && (parser.getText() == 'access_token')) {
                // Get the value.
                parser.nextToken();
                // Compute the grand total price for all invoices.
                accsToken = parser.getText();
            }
        }
        System.debug('accsToken--->'+accsToken); 
        
        
        String EndPointURLforREST = 'https://na59.salesforce.com/services/apexrest/CustomerService';
        req = new HTTPRequest();
        req.setEndPoint(EndPointURLforREST);
        req.setMethod('POST');
        req.setHeader('content-type','application/json'); 
        String jSONres = '{\"Name\":\"ZZZZZZZ REST DEMO1\",\"phone\":\"1234567899\"}';
        System.debug(jSONres);
        req.setBody(JSONres);
        req.setHeader('Authorization', 'OAuth '+accsToken); 
        response = HttpParam.send(req); 
        System.debug('status is ---->'+response.getStatus());
        
    } 
}