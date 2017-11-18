public with sharing class CountCTRL {

    public String ratingList { get; set; }

    public String searchvalue { get; set; }

    public List<account> accounttable{ get; set; }
    
    set<string> actrating = new set<string>();
       
    public CountCTRL(){
        accounttable =[select name,phone,rating from account  ];
        for(Account acc:accounttable){
                actrating.add(acc.rating);
        }     
    }
    
    public integer getCount() {
        integer intList;
        AggregateResult[] ar = [select count(id) ids,rating from account where name like :'%'+searchvalue+'%' and rating=:+ratingList group by rating];
        for(AggregateResult results :ar){
          //intList.add((string) results.get('rating'));
            intList = ((integer) results.get('ids'));
        }
        


        return intList;
    }
    
    
    
    public void searchbutton() {
        accounttable =[select name,id,phone,rating from account where name like: '%'+searchvalue+'%' and rating =:+ ratingList];
        
    }    
    
    public List<selectoption> getOptionList() {
       List<selectoption> optList = new List<selectoption>();
       optList.add(new selectoption('','-None-'));
       for(string actrat :actrating){
           if(actrat!=NULL)
           optList.add(new selectoption(actrat,actrat));
       }
       return optList;
    }
    
    
    public PageReference onloadMethod() {
         accounttable =[ select id,name,phone,rating from account limit 10 ];
         return null;
    }
    
}