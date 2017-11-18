trigger ContactDescriptionUpdate on Account (After update) {

Map<Id,Account> newList = trigger.newMap;
Map<Id,Account> oldList = trigger.oldMap;
List<contact> conList = [select id,description,AccountId from contact where AccountId IN:newList.keyset()];
system.debug(conList);
    for(Contact con:conList){
    Account newAcc = newList.get(con.AccountId);
    Account oldAcc =oldList.get(con.AccountId);
        if(newAcc.description == NULL){
                con.description ='Description not present';     
        }
        else if(newAcc.description == oldAcc.description){
                con.description = newAcc.description;   
        }
        else{
                con.description = newAcc.description;   
        }       
    }
    update conList;
    system.debug(conList);
    
}