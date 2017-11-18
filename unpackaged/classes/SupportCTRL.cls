public with sharing class SupportCTRL {
    account acc; 
    public boolean var {get; set;}
    public string selectList{get; set;}
    public string  statecountry{get; set;}
    public SupportCTRL(ApexPages.StandardController controller) {
    acc = (Account)controller.getrecord();
    acc.rating='Warm';
    var = false;
    }
    
    public List<selectoption> getselectedcountryas(){
    List<selectoption> ctList = new List<selectOption>();
    ctList.add(new selectoption('NONE','-None-'));
    ctList.add(new selectoption('IN', 'INDIA'));
    ctList.add(new selectoption('USA', 'United States'));
    ctList.add(new selectoption('UK', 'United Kingdom'));
    return ctList;
    }
    
    public List<selectoption> getstateList(){
    List<selectoption> InList = new List<selectoption>();
    Inlist.add(new selectoption('AP','Andhra Pradesh'));
    Inlist.add(new selectoption('TN','Tamil Nadu'));
    Inlist.add(new selectoption('KA','Karnataka')); 
    
    List<selectoption> usList = new List<selectoption>(); 
    uslist.add(new selectoption('IL','Illinois'));
    uslist.add(new selectoption('CA','California'));
    uslist.add(new selectoption('NY','Newyork'));      
    
    if(selectList =='IN'){
   
    return InList;
    }
    else if(selectList =='USA'){
        return usLIst;
    }
    else{
        return NULL;
    }
  }
  
  public void calstates(){
         if(selectList =='NONE'){
         var = false;
         }
         else{
         var=true;
         }
         
    }

    
    

}