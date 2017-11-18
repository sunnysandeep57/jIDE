trigger ISOUpdate on Account (Before Update) {

    Map<Id,Account> mapList = trigger.newMap;
    List<contact> conList = [select id,phone,AccountId from contact where AccountId IN:mapList.keyset()];
    if(conList.size()>0){
        for(Account acc:mapList.values()){
            acc.Checkcon__c = TRUE;
        }
    }
    else
        for(Account acc:mapList.values()){
            acc.Checkcon__c = FALSE;
        }       
}