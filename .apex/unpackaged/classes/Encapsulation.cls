public class Encapsulation {
    
    integer x;
    integer y;
    
    public void myMethod(integer a,integer b){
        system.debug(a+b);
        x=a;
        y=b;
        system.debug(x*y);
    }
    
    public void myMethod2(){
        system.debug(x+y);
    }
    
    public void myMethod(integer k, string name){
        system.debug('Value of K :'+k+'.....');
        system.debug('Name is :' +name+' Adhikari');
        system.debug(x-y);  
    }
    
    public void myMethod( string name, integer k){
        system.debug('Value of K :'+k+' .....');
        system.debug('Name is :' +name+' Adhikari');
        system.debug(x-y);  
    }
}