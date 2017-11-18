public class ListEx {
    public integer size;
    public void myMethod(){
        List<integer> myList = new List<integer>();
        myList.add(10);
        myList.add(20);
        myList.add(50);
        myList.add(30);
        myList.add(40); 
        myList.add(50);
        myList.add(2, 70);
        integer index = myList.get(2);
        integer lsize = myList.size();
        system.debug('Index :'+index);
        system.debug('List Size :' +lsize);
        system.debug('My List :' +myList);        
        for(integer i = 0; i<lsize;i++){
            if(myList.get(i) == 50){
                system.debug('30 is in position of:'+i);
                //break;
            }
        }
    }
    
    public void addList(){
        List<integer> newList = new List<integer>();
        for (integer k = 0; k<size;k++){
            newList.add(k);
            system.debug('Element is :'+k);
            //system.debug('Index is :' +newList.get(k));
        }
        newList.add(300);
        system.debug(+newList);
        integer newsize = newList.size();
        for (integer i=0;i<newsize;i++){                
            system.debug(newList.get(i) +'is in position of '+i);
        }
    }
    
    public void dynamic(){
        List<integer> list1 = new List<integer>();
        list1.add(100);
        system.debug('Total list is :'+list1);
        integer size1 = list1.size();
        system.debug('size of the list is :' +size1);
        for(integer i =0;i<size;i++){
            list1.add(i);
            system.debug('Element is ' +i);                        
        } 
        system.debug('Updated list is :'+list1);
        system.debug('Updated size is :'+list1.size());
        integer usize = list1.size();
        for(integer k = 0;k<usize;k++){
            system.debug(list1.get(k)+ 'is in position of' +k );
        }
        for(integer lvar : list1){
            system.debug('Elements @ loop as a list:'+lvar);
        }
    }    
}