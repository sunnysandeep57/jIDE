public class newStatic {
    public static integer x =10;
    public static integer y =20;
    public integer z =30;
    public integer a =40;
    public static void myMethod(string name ){
        system.debug('Static values are :'+x+ 'Another value is :' +y+'name is : '+name);
    }
    
    public void myMethod2(){
        system.debug('Static values are: '+(x+y)+'Non static values are :'+(a-z));
    }
}