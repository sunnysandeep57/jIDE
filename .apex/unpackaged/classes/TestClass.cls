public virtual class TestClass {
	public string first ='Pradeepppppp';
    public string middle = 'Deepu';
    public string last = 'Bullabayi';
    public TestClass(){
        this.middle ='Ramesh' ;
        this.last   ='Ramachandran' ;
        printMethod();
        
    }
    
    public TestClass(string first,string middle,string last){
        this();
        this.first =first;
        system.debug('this.first is :'+this.first);
        PrintMethod();
    }
    
    public void printMethod(){
        system.debug('Middle name is :'+middle+'Last name is :'+this.Last);
    }
    
    public virtual void printName(){
        system.debug('Middle name is :'+middle+'First name is :'+this.first+'and Last name is: '+this.last);
    }
}