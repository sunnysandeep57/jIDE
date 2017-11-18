trigger TestInsert on Account (After Insert) {
    
    Account myAccount=trigger.new[0];
    //Account acc=[select id from account where id = :myAccount.id];
    for(Account acc: [select id from account where id=:myAccount.Id]){
        acc.phone='123780';
        system.debug(acc);
        update acc;
    }
    system.debug(myAccount);
    
}