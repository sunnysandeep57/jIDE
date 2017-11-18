trigger SampleTrigger on Account (before update) {
    List<Account> accList = trigger.new;
    Account acc=accList.get(0);
    if(acc.Industry == 'Finance'){
        acc.Rating ='Warm';
    }
    else if (acc.Industry == 'Banking'){
        acc.Rating ='Hot';
    }
    else
       acc.Rating ='Cold'; 
}