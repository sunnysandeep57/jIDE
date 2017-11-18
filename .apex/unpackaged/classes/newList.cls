public class newList {
    public integer size;
    public List<integer> myMethod1(){
        List<integer> listAdd = new List<integer>();
        listAdd.add(10);
        listAdd.add(20);
        listAdd.add(30);
        system.debug('elements in the list is : '+listAdd);
        system.debug('size of the list is : '+listAdd.size());
        for(integer k =0;k<size;k++){
            listAdd.add(k);
            system.debug(k);
        }
        system.debug('Updated list is : '+listAdd);
        system.debug('Updated Size is : '+listAdd.size());
        system.debug('=========================================');
        for(integer val :listAdd){
            system.debug('Value is :'+val);
        }
        system.debug('=========================================');
        for(integer k =0;k<listAdd.size();k++){
            system.debug(+listAdd.get(k)+ 'is at a position of' +k);
        }
        
        
        system.debug('=========================================');
        return listAdd;
    }
    
    public List<integer>  myMethod2(){
        List<integer> listAdd1 = new List<integer>();
        listAdd1.add(100);
        listAdd1.add(200);
        listAdd1.add(300);
        system.debug('elements in the list is : '+listAdd1);
        system.debug('size of the list is : '+listAdd1.size());
        for(integer k =0;k<size;k++){
            listAdd1.add(k);
            system.debug(k);
        }
        system.debug('Updated list is : '+listAdd1);
        system.debug('Updated Size is : '+listAdd1.size());
        system.debug('=========================================');
        for(integer val :listAdd1){
            system.debug('Value is :'+val);
        }
        system.debug('=========================================');
        for(integer k =0;k<listAdd1.size();k++){
            system.debug(+listAdd1.get(k)+ 'is at a position of' +k);
        }
        
        
        system.debug('=========================================');
        return listAdd1;
    }
    	
    public List<integer>  myMethod3(){
        List<integer> allList = new List<integer>();
        allList.addAll(myMethod1());
        allList.addAll(myMethod2());
        system.debug('===============**************============');
        system.debug(allList.size());
        system.debug('===============**************============');
        return allList;

    }
    
}