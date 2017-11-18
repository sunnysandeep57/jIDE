public class ChildMethod extends Inheritance1 {
    integer y=15;
    public void childMethod1(integer y, string name){
        system.debug('Value of Y is :' +y);        
        system.debug('Child First Method');
        system.debug('Result of x+y is :' +(x+y)+name+' '+'Adhikari');
        system.debug(this.y+' '+y );
    }  
    
    public override void mainMethod1(integer k){
        system.debug('Value of k is :' +k);        
        system.debug('Override Method');
        system.debug('Result of k is :' +(k+this.y)+'Adhikari');     
    }
    
    public void childMethod2(){
        system.debug('Child Second Method');
    }
}