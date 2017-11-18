public class ControlStat {
    
    //public integer x;
    
    public void whileLoop(integer x){
        do{
            system.debug('Value is :' +x);
            x--;
        }while(X>=50);
    }
    
    public void forLoop(integer y){
        for(;y<=10;y++){
            system.debug('Value is :' +y);            
        }
    }
    
    public void evenOdd(integer z){
        do{
            if( math.mod (z,2) ==0){
                system.debug('Value is :' +z);
                system.debug('This is Even');
                z+=2;
            }
            else {
                system.debug('Value is :' +z);
                system.debug('This is Odd');
                z+=2;
            }
        }while(z<=10);    
    }
    
    /*public void oddEven(integer z){
        if (math.mod(z,2) ==0){
            do{
                system.debug('Value is :' +z);
                system.debug('This is Even');
                Z+=2;
            }while (z<=10);
        }
        else {
            
            do{
                system.debug('Value is :' +z);
                system.debug('This is Odd');
                z+=2;
            }while(z<=10);
        }  
    }*/
}