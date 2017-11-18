public class HashMap {
    public static void myMethod(){
        Map<integer,string> mapVar = new Map<integer,string>();
        system.debug(mapVar.isEmpty());
        mapVar.put(10, 'Sandeep');
        mapVar.put(20, 'Pradeep');
        mapVar.put(30, 'Syamala');
        mapVar.put(40, 'Ramesh');
        system.debug('Map Details :'+mapvar);
        system.debug('Size:'+mapVar.size());
        system.debug(mapVar.containsKey(1));
        system.debug(mapVar.get(2));
        //mapVar.hashCode();
        system.debug(mapVar.isEmpty());
        for(integer key :mapVar.keySet()){
            system.debug('Key is :'+key);
        }
        
        for(string value : mapVar.values()){
            system.debug('value is :'+value);
        }
        
        for(integer entry :mapVar.keySet() ){
            system.debug(+mapVar.get(entry)+ ' has a key value of ' +entry );
        }
        
        List<string> listval = mapVar.values();
        system.debug(listval);
        
        Set<integer> keyval = mapVar.keySet();
        system.debug(keyval);
    }
}