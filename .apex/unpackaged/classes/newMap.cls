public class newMap {
    public static void mymethod(){
        Map<integer,string> addMap = new Map<integer,string>();
        addMap.put(1,'Sandeep');
        addMap.put(2,'Pradeep');
        addMap.put(3,'Ramesh');
        addMap.put(4,'Syamala');
        system.debug('Map Values are : '+addMap);
        system.debug('size is : '+addMap.size());
        system.debug('==============Keys==============');
        for(integer keys : addMap.keySet()){
            system.debug('Key is: '+keys);
            system.debug('Value :' +addMap.get(keys)+'has a key of '+keys);
        }                    
        system.debug('==============Values==============');
        for(string val :addMap.values()){
            system.debug('Value is: '+val);
        }
        List<string> listval = addMap.values();
        system.debug(listval);
        
        set<integer> setVal = addMap.keySet();
        system.debug(setval);               
    }
	
   
}