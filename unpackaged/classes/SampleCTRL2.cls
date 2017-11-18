public with sharing class SampleCTRL2 {

 


    


    public String yahookey { get; set; }

    public String searchkey { get; set; }
    
     public PageReference searchgoogle() {
     
         PageReference pgref  = new PageReference('https://www.google.com/search?q='+ searchkey);
         return pgref;
    }
    
    public PageReference searchyahoo() {
        PageReference pgref = new PageReference('https://www.'+yahookey+'.com');
        return pgref;
    }
    
       public PageReference googlegoogle() {
        PageReference pgref  = new PageReference('https://www.google.com/search?q='+ searchkey);
         return pgref;
    }
    
    
    
    
}