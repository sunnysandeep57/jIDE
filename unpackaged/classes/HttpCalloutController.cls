public class HttpCalloutController {
    public List<wrapcontacts> lstW{get; set;}
    
    public HttpCalloutController(){
        HTTP http = new HTTP();
        HTTPRequest Request = new HTTPRequest();
        Request.setEndpoint('https://api.androidhive.info/contacts/');
        Request.setMethod('GET');
        //Request.setBody('XML/JSON');
        
        //get the response by creating an instance.
        HTTPResponse Response = http.send(Request);
        string ResBody = Response.getBody();
        system.debug('Response is >>>>'+ResBody);
        JSONParser parser = JSON.createParser(Response.getBody());
        System.JSONToken token;
        string text;
        Parser.nextToken();
        Parser.nextToken();
        Parser.nextToken();
        Parser.nextToken();
        List<string> ids = new List<string>();
        List<string> names = new List<string>();
        List<string> emails = new List<string>();
        lstW = new List<wrapcontacts>();        
        while((token = parser.nextToken()) != null) {
            // Parse the object
            if ((token = parser.getCurrentToken()) != JSONToken.END_OBJECT) {
                text = parser.getText();
                if (token == JSONToken.FIELD_Name && text == 'id') {
                    token=parser.nextToken();
                    ids.add(parser.getText());                    
                } else if (token == JSONToken.FIELD_Name && text == 'name') {
                    token=parser.nextToken();
                    names.add(parser.getText());
                } else if (token == JSONToken.FIELD_Name && text == 'phone') {
                    token=parser.nextToken();
                    token=parser.nextToken();
                    token=parser.nextToken();
                    emails.add(parser.getText());
                } 
            }
        }   
        for(integer i=0;i<ids.size();i++){
            wrapcontacts objW = new wrapcontacts();
            objW.id = ids[i];
            objW.name = names.get(i);
            objW.email = emails.get(i);
            lstw.add(objW);            
        }
        system.debug(lstw);      
    }
 
    public class wrapcontacts{
        public string id {get; set;}
        public string name{get; set;}
        public string email {get; set;}   
    }
}