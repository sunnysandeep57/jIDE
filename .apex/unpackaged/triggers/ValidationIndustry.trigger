trigger ValidationIndustry on Account (before insert,before update) {
    
    Account acc = trigger.new[0];
    if((acc.Industry!=NULL && acc.AnnualRevenue ==NULL)||(acc.Industry==NULL && acc.AnnualRevenue !=NULL) ){
            acc.addError('Enter Annual Revenue if you choose industry');
    } 
    
}