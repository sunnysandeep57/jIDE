public virtual class SuperClass {
    public string first;
    public string middle;
    public string last;
    
    public SuperClass(){
        this.first = 'Sandeep';
        this.last = 'Adhikari';
        //printFL();
    }
    
    public SuperClass(string first,string middle, string last){
        this();
        //this.first = first;
        this.middle = middle;
        //this.last = last;
        printName();
        
    }
    
    public virtual void printFL(){
        system.debug('My first name is :' +this.first+ 'and Last name is : ' +this.last);
        //printName();
    }
    
    public void printName(){
        system.debug('My first name is :' +this.first+' , middle name is :'+this.middle+ ' and Last name is : ' +this.last);
        //printFL();
    }
    
    
}