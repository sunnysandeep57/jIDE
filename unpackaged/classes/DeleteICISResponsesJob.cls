public class DeleteICISResponsesJob implements Database.Batchable<sObject> {
    	public DeleteICISResponsesJob() {}
    
    	public Database.QueryLocator start(Database.BatchableContext BC) {
		return Database.getQueryLocator('select id from Account where status__c!=\'' + 'New' + '\'');
            
        
		//return Database.getQueryLocator('select id from Account where status__c!=\" + \'New' + '\"');
	}
    
	public void execute(Database.BatchableContext BC, List<sObject> scope) {
	                delete scope;    
    	}
    
    	public void finish (Database.BatchableContext BC) {}

}