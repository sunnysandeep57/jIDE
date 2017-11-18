trigger ConOptTrigger on Account (After Insert,After update) {
    List<Account> accList  =trigger.new;
    Account acc = accList[0];
    List<sObject> mList = new List<sOBject>();
    List<contact> conList = [select name,phone from contact where AccountId=:acc.Id];
    List<opportunity> optList = [select name,stagename from opportunity where AccountId=:acc.Id];
    mList.addAll((List<sObject>)conList);
    mList.addAll((List<sObject>)optList);
    if(mList.size()>0){
        for(sObject sObj:mList){
            if(sObj instanceof contact){
                contact con = new Contact();
                con.Lastname ='ConTrigger'+acc.name;
                con.phone = acc.Phone;
                con.AccountID = acc.ID;
                insert con;
            }
            else if(sObj instanceof opportunity){
                opportunity opp = new opportunity();
                opp.name = 'OppTrigger'+acc.name;
                opp.closeDate = date.today()+10;
                opp.stageName = 'Prospecting';
                opp.AccountID = acc.ID;
                insert opp;
            }
            else{
                system.debug('Error');
            }
        }
    }
    
}