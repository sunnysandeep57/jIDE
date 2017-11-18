trigger NewOld on Contact (before update) {

    Map<Id,Contact> newList = trigger.newMap;
    Map<id,Contact> oldList = trigger.oldMap;

    for(contact con:newList.values()){
        contact cnn = newList.get(con.Id);
        contact old = oldList.get(con.Id);
        if(cnn.Email != old.Email){
            con.addError('Email id is same');
        }
    }

}