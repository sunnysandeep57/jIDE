public class MapLS {
    public static void myMethod1(){
        Map<integer,List<string>> mapvar = new Map<integer,List<string>>();
        List<String> subMap = new List<string>();
        subMap.add('Andhra');
        subMap.add('Telangana');
        subMap.add('Karnataka');
        mapVar.put(1,subMap);
        system.debug(mapVar);
        system.debug(subMap);
        subMap = new List<string>();
        subMap.add('Delhi');
        subMap.add('Mumbai');
        subMap.add('Agra');
        mapVar.put(2,subMap);
        system.debug(subMap);
        subMap = new List<string>();
        system.debug(mapVar);
        for(integer keys :mapVar.keySet()){
            system.debug('Key is: '+keys);
        }
        for(List<String> value :mapVar.values()){
            system.debug('Value is: '+value);
        }
        system.debug('******************************');
        for(integer keys :mapVar.keySet()){
            system.debug('Key >>>>>: '+keys);
            for(string val : mapVar.get(keys)){
                system.debug(val);
            }
        }
        
        for(integer keys:mapVar.keyset()){
            system.debug('Key>>>>:'+keys);
            for(string val:mapVar.get(keys)){
                system.debug(val);
            }
        }
        system.debug('******************************');     
    }
    
    public static void myMethod2(){
        Map<String,set<integer>> setVar = new Map<String,set<integer>>();
        set<integer> valSet = new set<integer>();
        valSet.add(100);
        valSet.add(200);
        valSet.add(300);
        system.debug(valSet);
        setVar.put('Rupee',valSet);
        system.debug(setVar);
        valSet = new set<integer>();
        valSet.add(1111);
        valSet.add(2222);
        valSet.add(3333);
        system.debug(valSet);
        setVar.put('Dollar',valSet);
        system.debug(setVar);
        valSet = new set<integer>();
        for(string keys: setVar.keySet()){
            system.debug('Key is :'+keys);
        }
        for(set<integer> vals:setVar.values()){
            system.debug(vals);
            for(integer sets:vals){
                system.debug('Each value is:'+sets);
            }
        }
        system.debug('=========Key and his associated value(line-line) ==========');
        for(string keys:setVar.keySet()){
            system.debug('Key >>>>>' +keys);
            for(integer vals:setVar.get(keys)){
                system.debug('Value >>>>>>'+vals);
            }
        }
    }
    
    public static Map<string,Map<integer,string>> myMethod3(){
        Map<string,Map<integer,string>> mapvar = new Map<string,Map<integer,string>>();
        Map<integer,string> subMap = new Map<integer,string>();
        subMap.put(1,'One');
        subMap.put(2,'Two');
        subMap.put(3,'Three');
        mapVar.put('Winners',subMap);
        system.debug(subMap);
        system.debug(mapVar);
        subMap = new Map<integer,string>();
        subMap.put(4,'Four');
        subMap.put(5,'Five');
        subMap.put(6,'Six');
        mapVar.put('Losers',subMap);
        system.debug(subMap);
        subMap = new Map<integer,string>();
        system.debug(mapVar);
        for(string bKey:mapVar.keySet()){
            system.debug('Big Key is : '+bKey);
        }
        for(Map<integer,string> bVal:mapVar.values()){
            system.debug('Big Value is : '+bval);
        }
        system.debug('=========SubMap Keys are===========');
        for(Map<integer,string> bVal:mapVar.values()){
            //system.debug('Big Value is : '+bval);
            for(integer sKey:bVal.keySet()){
                system.debug('Small Key is '+sKey);
            }
        }
        system.debug('=========SubMap Values are===========');
        for(Map<integer,string> bVal:mapVar.values()){
            //system.debug('Big Value is : '+bval);
            for(string sVal:bVal.values()){
                system.debug('Small val is '+sVal);
            }
        }
        System.debug('Print only using Keyset');
        for(string bKey:mapvar.keySet()){
            for(integer sKey:mapVar.get(bKey).keyset()){
                system.debug('<<<<<Values>>>>>'+mapVar.get(bKey).get(sKey));
                
            }
        }
        system.debug('******************************'); 
        system.debug('******************************'); 
        return mapVar;
    }
    
}