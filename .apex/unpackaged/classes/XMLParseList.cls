public class XMLParseList {
    public List<wrapperClass> lstW{get;set;}
    public XMLParseList(){
        HTTP http = new HTTP();
        //Request HTTP and set the end point and method
        HTTPRequest Request = new HTTPRequest();
        Request.setEndpoint('https://api.androidhive.info/pizza/?format=xml');
        Request.setMethod('GET');
        //Create the Response
        HTTPResponse Response = http.send(Request);
        system.debug(Response.getBody());
        //XML Parsing
        DOM.Document doc = new DOM.Document();
        doc.load(Response.getBody());        
        system.debug('Child Items are :'+doc.getRootElement().getChildElements());
        List<string> ids = new List<string>();
        List<string> names = new List<string>();
        List<string> costs = new List<string>();
        List<string> descs = new List<string>();
        lstW = new List<wrapperClass>();
        for(DOM.XmlNode rootElement :doc.getRootElement().getChildElements()){
            system.debug(rootElement);
            //wrapperClass wrapInstance = new wrapperClass();
            integer i = 0;
            for(DOM.XmlNode childElements : rootElement.getChildElements()){
                if(i==0){
                    //wrapInstance.Id = childElements.gettext();
                    ids.add(childElements.gettext());
                }
                if(i==1){
                    //wrapInstance.Id = childElements.gettext();
                    names.add(childElements.gettext());
                }
                if(i==2){
                    //wrapInstance.Id = childElements.gettext();
                    costs.add(childElements.gettext());
                }
                if(i==3){
                    //wrapInstance.Id = childElements.gettext();
                    descs.add(childElements.gettext());
                }
                i++;
            }
        }
        for(integer j=0;j<ids.size();j++){
            wrapperClass obj = new wrapperClass();
            obj.id = ids[j];
            obj.name = names[j];
            obj.cost = costs[j];
            obj.description = descs[j];
            lstW.add(obj);
        }        
    }
    
    //public wrapperClass wrapInstance{get;set;}
    public class wrapperclass{
        public string id{get;set;}
        public string name{get;set;}
        public string cost{get;set;}
        public string description{get;set;}
    }
}