public class CalNums {
    public integer i;
    public integer j;
    public integer z;
    private integer k;
    public integer l;
    public string name;
    
    public void myMethod3(integer a)
    {
        z = 9;
        //system.debug(a);
        system.debug(z);
        system.debug(a+z);
    }
    
    public void calculate()
    {
        system.debug(name);
        integer k = i*j;
        integer l = i+j;
        system.debug(k);
        system.debug(l);
        system.debug(k+l+z);
    }
    
}