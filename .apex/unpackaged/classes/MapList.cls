public class MapList {
    public static Map<String,Map<integer,string>> myMethod(){
        Map<integer,string> subMap = new Map<integer,string>();
        Map<String,Map<integer,string>> mapVar = new Map<String,Map<integer,string>>();
        subMap.put(10,'Andhra');
        subMap.put(20,'Telangana');
        subMap.put(30,'Karnataka');
        mapVar.put('South',subMap);
        system.debug(subMap);
        subMap = new Map<integer,string>();
        system.debug(mapVar);
        subMap.put(11,'Delhi');
        subMap.put(22,'Mumbai');
        subMap.put(33,'Nagpur');
        mapVar.put('North',subMap);
        system.debug(subMap);
        subMap = new Map<integer,string>();
        system.debug(mapVar); 
        system.debug(mapVar.get('South').get(30)); 
        for(string mainKey:mapVar.keySet()){
            for(integer subKey:mapVar.get(mainKey).keyset()){
            	system.debug('subkeys are '+subkey);    
            }
        }
        for(map<integer,string> minimap :mapVar.values()){
            for(integer keyval : minimap.keyset()){
                system.debug('another set of keys >>>'+keyval);
            }
        }
        
        for(map<integer,string> mapval:mapVar.values()){
            for(integer keydata:mapval.keyset()){
                system.debug('KKKKKEEEEYYYYSSS' +keydata);
            }
        }
        return mapVar;
    }
    
    public static Map<string,List<integer>>  myMethod1(){
        List<integer> subList = new List<Integer>();
        Map<string,List<integer>> mapList = new Map<string,List<integer>>();
        subList.add(10);
        subList.add(20);
        mapList.put('Numbers : ',subList);
        system.debug(subList);
        system.debug(mapList);
        subList = new List<Integer>();
        system.debug(mapList);  
        subList.add(100);
        subList.add(200);
        mapList.put('Hundreds : ',subList);
        system.debug(subList);
        subList = new List<Integer>();
        system.debug(mapList);  	
        for(List<integer> lis:mapList.values()){
            system.debug(lis);
            for(integer vals :lis){
                system.debug(vals);
            }
        } 
        return mapList;
    }
	
    public static map<string,set<string>>  myMethod2(){
        set<string> miniset = new set<string>();
        map<string,set<string>> megamap = new map<string,set<string>>();
        miniset.add('Sandeep');
        miniset.add('Pradeep');
        miniset.add('Sandeep');
        miniset.add('Ramesh');
        megamap.put('names',miniset);
        system.debug(megamap);
        miniset = new set<string>();
        miniset.add('Audi');
        miniset.add('BMW');
        miniset.add('BENZ');
        miniset.add('Ford');
        megamap.put('Cars',miniset);
        system.debug(megamap);
        for(set<string> setmini : megamap.values()){
            system.debug('setmini value :'+setmini);
            for(string dataset :setmini){
                system.debug('dataset value: :'+dataset);
            }
        }
		return megamap;   
    }
}