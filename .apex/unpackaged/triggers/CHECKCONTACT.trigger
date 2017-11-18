trigger CHECKCONTACT on contact (After Delete) {
	if(Reccursiveclass.Flag){
		Reccursiveclass.Flag= FALSE;
		Set<Id> ContactId = new Set<Id>();
			for(contact con:trigger.old){
				contactId.add(con.AccountId);
			}
			system.debug('Contact ID\'s are :' +ContactId);
			List<Account>  accList = [select Id from account where Id In:ContactId];
			system.debug('Account List is:' +accList);
			List<contact> conList = [select AccountID from contact where AccountID IN:contactID];
			for(Contact ctu :trigger.old){
				conList.add(ctu);
			}
			system.debug('All Contacts :'+conList);
			integer counter = 0, flag = 0;
			for(Account acct:accList){
				for(contact con:conList){
					if(acct.Id == con.AccountID){
						counter++;
					}
				}
				for(contact condel:trigger.old){
					if(acct.ID==condel.accountID){
						flag++;
					}
				}
			if(Counter == flag){
				acct.checkcon__c =FALSE;
			}
			counter = 0;
			flag =0;
			}
		update accList;

		}
	}