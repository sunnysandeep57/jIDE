public with sharing class ListCustomCtrl {

    


   

   
    public string ppp;
    

    public String searchkey { get; set; }

    public List<Account>  AccList { get; set; }
    
     public String selectrating { get; set; }
    set<string> listrating = new set<string>();  
    
    public ListCustomCtrl(){ 
     
    AccList =[select name,rating,phone from account];
    for(Account acc:acclist){
        listrating.add(acc.rating);
    }
    
    
   }
   

     
     public void SearchRecords() {
        string temp = '\'%'+searchkey+'%\'';
        AccList =[select name,phone,rating from account where name like: '%'+searchkey+'%' and rating=:+ selectrating];
        //string query = 'select name,phone,rating from account where name like ' +temp+ 'and rating =\'+selectrating\'';
        /*if(selectrating !=NULL){
            query =query+'and rating =\'+selectrating\'';
            }*/
        //accList = Database.query(query);
        
    }
    
    public List<selectoption> getRating() {
        List<selectoption> newList = new List<selectOption>();
        newList.add(new selectoption('','-None-'));
        for(string val:listrating){
            //newList.add(val);
            if(val!=NULL){
            newList.add(new selectoption(val,val));
            }
           
        }
       return newList;
      
    }
}