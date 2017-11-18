trigger AccountUndelete on Account (After undelete) {

    List<Account> accList = [select id,name from account where id in :trigger.new];
    //undelete accList;
    for(Account acc:accList){
        acc.description ='Description Updated after undeleting the record';
    }
    update accList;
}