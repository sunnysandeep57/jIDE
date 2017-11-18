trigger BeforeDeleteRating on Account (before Delete) {
    
    
    Account acctype = trigger.new[0];
    for(Account acc : [select id,name from account where id=:acctype.id]){     
        if(acc.Rating  =='Hot'){
            acc.addError('Rating is Hot and the accout wont get deleted');
        }   
    }    
}