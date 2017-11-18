public class ReturnType {
    public integer x ;
    public integer y ;
    
    public void mainMethod(integer x,integer y){
        this.x = x;
        this.y = y;
        system.debug('Value is : '+(x+y));
    }
    
    public integer myMethod(){
        this.x = x+11;
        system.debug(this.x);
        return(x+y);
    }
    public integer myMethod(integer z){
        return(x+y+z);
    }
}