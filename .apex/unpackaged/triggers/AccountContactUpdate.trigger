//If Account updates his phone number related record for the contact should get udpated 

trigger AccountContactUpdate on Account ( after update) {

    //Set<Id> setId = new Set<id>();
    //Map<Id,Account> mapList = new Map<Id,Account>();
    //for(Account acc:trigger.new){
    //  setId.add(acc.Id);
    //  mapList.put(acc.Id,acc);
    //}
    Map<Id,Account> mapList = trigger.newMap;
    List<contact> conLIst=[select id,phone from contact where AccountId IN :mapList.keyset()];
    for(contact con:conList){
        Account acc = mapList.get(con.AccountId);
        con.phone =con.phone;
    }

}