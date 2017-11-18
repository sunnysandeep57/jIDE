public class getSet {
	public  integer Age;
    public  string Name;
    
    public  void setAge(integer Age){
        this.Age=Age;
    }
    
    public void setname(String setName){
        Name=setName;
    }
    public integer getAge(){
        return this.Age;
    }
    
    public String getname(){
        return Name;
    } 
    
    public void cList(){
        getAge();
        getname();
    } 
    
}