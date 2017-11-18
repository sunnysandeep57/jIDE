public virtual class Inheritance1 {
    public integer x =30 ;
    public virtual void mainMethod1(integer x){
        system.debug('Value of X is :' +x);
        system.debug('Parent First Method');
    }  
    public void mainMethod2(){
        system.debug('Parent Second Method');
    }
}