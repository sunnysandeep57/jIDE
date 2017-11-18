global class BatchApex implements Database.Batchable<sObject>, Database.stateful{
    global database.QueryLocator start(Database.BatchableContext bc){
        string query='';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc,List<sObject> scope){
		
    }
    global void finish(Database.BatchableContext bc){
        
    }
}