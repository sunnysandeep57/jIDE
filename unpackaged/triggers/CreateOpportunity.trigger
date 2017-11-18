trigger CreateOpportunity on Account (After insert) {

    Map<Id,Account> mapList = trigger.newMap;
    List<Opportunity> oppList = new List<Opportunity>();
    List<contact> conList = new List<contact>();
    for(Account acc:mapList.values()){
        if(acc.Rating=='Hot'){
        opportunity opp = new opportunity();
        opp.closedate = date.today()+30;
        opp.stagename = 'Prospecting';
        opp.name = 'New Opp'+acc.name;
        opp.AccountId = acc.Id;
        oppList.add(opp);
        }
        else{
            contact con = new contact();
            con.lastname = 'TRIGGERCONTACT'+acc.name;
            con.phone = acc.phone;
            con.accountID =acc.ID;
            conList.add(con);
        }
    }
    insert oppList;
    insert conList;
}