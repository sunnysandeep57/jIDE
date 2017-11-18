public with sharing class SampleCustomCTRL { 
    
    public SampleCustomCTRL(){
        this.value1=0;
        this.value2=10;
    }
    
    public integer results { get; set; }

    public integer value2 { get; set; }
    
    public integer value1 { get; set; }

    public String selectcountry1 { get; set; }
    
    public String selectcountry2 { get; set; }
    
    public void Add() {
        // results= value1-value2;
    }
    
    public integer getShowResults() {
        return value1+value2;
    }
    
    public integer getShownewResults() {
        return value1-value2;
    }
    
     public integer getMultiplication() {
        return value1*value2;
    }
    
     public integer getDivision() {
         
        return value1/value2;
    }
    
    public void view() {
        
    }
    
     public List<selectoption> getCountry() {
        List<selectoption> conList = new List<selectoption>();
        conList.add(new selectoption('', '-None-'));
        conList.add(new selectoption('IN', 'INDIA'));
        conList.add(new selectoption('USA', 'United States'));
        conList.add(new selectoption('UK', 'United Kingdom')); 
        return conList;
    }
            
}