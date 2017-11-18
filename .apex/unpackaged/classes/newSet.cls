public class newSet {
    public integer size=6;
    public string name ='QQQ';
    public  newSet(){
        set<string> setAdd = new set<string>();
        setAdd.add('Sandeep');
        setAdd.add('Pradeep');
        setAdd.add('Sandeep');
        system.debug('Values in the set are : '+setAdd);
        system.debug('size of the set is : '+setAdd.size());
        for(integer k =1;k<size;k++){
            setAdd.add(+name+k);
            system.debug('Element inserted is '+k);
        }
        system.debug('Values in the set are : '+setAdd);
        system.debug('size of the set is : '+setAdd.size());
        system.debug('=========================================');
        for(string val : setAdd){
            system.debug('Values are :'+val);
        }
        system.debug('=========================================');
        
        
    }  
}