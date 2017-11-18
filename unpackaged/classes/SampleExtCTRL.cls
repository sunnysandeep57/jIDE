public with sharing class SampleExtCTRL {
    Account acc;
    public boolean checkboxenable{get; set;}
    public SampleExtCTRL(ApexPages.StandardController controller) {
        
        acc = (Account)controller.getrecord();
        acc.rating = 'Warm';
        acc.AccountNumber = 'AccExt123';
        acc.billingcountry ='INDIA';
        
    }

}