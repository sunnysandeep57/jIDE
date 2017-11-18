public class SetEx {
    public integer size;
    public set<integer> myMethod(){
        set<integer> newset = new set<integer>();
        newset.add(10);
        newset.add(20);
        newset.add(30);
        newset.add(10);
        integer size = newset.size();
        system.debug('Values in the set :' +newset);
        system.debug('Size of the list is :'+size);
        return newset;
    }
    
    public set<integer> newMethod(){ 
        set<integer> uset = new set<integer>();
        uset.add(10);
        integer usize = uset.size();
        system.debug('Values in the set :' +uset);
        system.debug('Size of the list is :'+uset.size());
        for(integer i=0;i<size;i++){
            uset.add(i);
            system.debug('Element in the new set :'+i);
        }
        system.debug('Values in the set :' +uset);
        system.debug('Size of the list is :'+uset.size());
        for(integer svar: uset){
            system.debug(svar);
        }
        system.debug(uset);
        return uset;
    }
    
    public set<integer> addSet(){
        set<integer> nset = new set<integer>();
        nset.addAll(newMethod());
        nset.addAll(myMethod());
        return nset;
    }
    
    
}