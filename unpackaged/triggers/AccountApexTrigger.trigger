trigger AccountApexTrigger on Account (After insert,After update) {
    
    if(trigger.isAfter && trigger.isupdate){
        AccountTriggerHelper.createOpp(trigger.new);
    }
    if(trigger.isBefore){
        AccountTriggerHelper.updateRating(trigger.new);
    }
    
}