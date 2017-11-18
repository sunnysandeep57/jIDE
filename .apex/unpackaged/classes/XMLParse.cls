public class XMLParse {
    public List<wrapperClass> lstW{get;set;}
    public XMLParse(){
        HTTP http = new HTTP();
        //Create the HTTP Request
        HTTPRequest Request = new HTTPRequest();
        Request.setEndpoint('https://api.androidhive.info/pizza/?format=xml');
        Request.setMethod('GET');
        //Create the HTTP Response
        HTTPResponse Response = http.send(Request);
        string ResponseBody = Response.getBody();
        //XML Parsing
        DOM.Document doc = new DOM.Document();
        doc.load(Response.getBody());
        system.debug('Root Child Elements are' +doc.getRootElement().getChildElements());
        lstW = new List<wrapperClass>();
        for(DOM.XmlNode rootType : doc.getRootElement().getChildElements()){ //
         	wrapperClass wrapInstance = new wrapperClass();
            integer i = 0;
            system.debug(rootType.getChildElements());
            for(DOM.XmlNode childNodes : rootType.getChildElements()){
                if(i==0){
                    wrapInstance.Id = childNodes.getText();
                }
                if(i==1){
                    wrapInstance.Name = childNodes.getText();
                }
                if(i==2){
                    wrapInstance.Cost = childNodes.getText();
                }
                if(i==3){
                    wrapInstance.Description = childNodes.getText();
                }
                i++;
            }
            lstW.add(wrapInstance);
        }
        system.debug('XML Parsing Completed>>>'+lstW);
    }
    
    //public wrapperClass wrapInstance{get;set;} 
    public class wrapperclass{
        public string id{get;set;}
        public string name{get;set;}
        public string cost{get;set;}
        public string description{get;set;}
    }
}