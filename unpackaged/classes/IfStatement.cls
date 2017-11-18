public class IfStatement {
    
    public integer x;
    //public string name;
    //public integer age;
    
    
    public integer myMethod(){
        return x*x;
    }
    
    public void condStat(){
        if(x>0){
            system.debug('X is greater than Zero :' +x);            
        }
        else if (x<0){
            system.debug('X is less than zero :' +x );
        }
        else{
            system.debug('X is equal to Zero');            
        }  
    }
    
    public void stringChar(string name,integer age,integer k){
        if (name == 'Sandeep' && age > k){
            system.debug('Name is Sandeep');
        }
        else if (name =='Pradeep'){
            system.debug('Name is Pradeep');
        }
        else{
            system.debug('Not a valid Name');
        }
    }
}