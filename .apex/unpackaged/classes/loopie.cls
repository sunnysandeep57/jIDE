public class loopie{
    public static void mymethod(){
        Map<integer,string> subVar = new Map<integer,string>();
        Map<string,Map<integer,string>> mapVar = new Map<string,Map<integer,string>>();     
        subVar.put(1,'One');
        subVar.put(2,'Two');
        subVar.put(3,'Three');
        mapvar.put('Winners',subVar);
        system.debug(subvar);
        system.debug(mapvar);
        subVar = new Map<integer,string>();
        subVar.put(4,'Four');
        subVar.put(5,'Five');
        subVar.put(6,'Six');
        mapvar.put('Losers',subVar);
        system.debug(subvar);
        system.debug(mapvar);
        for(Map<integer,string> val:mapvar.values()){
            //system.debug(val);
            for(integer keys:val.keyset()){
                system.debug('Key is >>>>>'+keys);
            }
            
        }
        for(map<integer,string> value:mapVar.values()){
            for(integer keydata:value.keyset()){
                //system.debug(keydata);
                system.debug(value.get(keydata));
            }
        } 
        system.debug('======================');   
        for(string Bkey:mapVar.keyset()){
            for(integer Skey:mapvar.get(Bkey).keyset()){
                system.debug('Small Values are :'+ mapvar.get(Bkey).get(Skey));
            }
        }  
        system.debug('======================');
    }
}