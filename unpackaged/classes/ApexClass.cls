Public class ApexClass extends TestClass{
    public string first ;
    public string middle;
    public string last;
    //public integer price;
    public ApexClass(string first,String middle,String Last){
        super(first,middle,last);
        system.debug(first);
    }
    
    public ApexClass(integer price){
        super();
        system.debug('Price is : '+price);
        super.printMethod();
        super.printName();
        
        
    }
    
}