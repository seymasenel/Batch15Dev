//Parameterized methods and call from anonymous
public  class PrimitiveDataTypeDemo {
    public void print1(){ //will create some data type variables and print it
        string batchName ='Batch 15';
        integer totalCandidates =57;
        Boolean isAdminCompleted =true;

        String batchDescription = batchName + ' has ' +totalCandidates+ ' candidates, and is the bestest.';
        System.debug(batchDescription);

    }
    public void print2(){
        Decimal d1 =788.4564;
        System.debug('d1 is ' + d1);

        Long l1 =2483479457L;
        system.debug(l1);


        Double dd1 =267463847.64;
        system.debug('dd1 ' + dd1);

        id accId = '0015500000WO1ZiAAL'; 
        system.debug('acc id is ' + accId);

        //all datatypes are INHERITED  from object
        
        Object obj1 = 99;
        Object obj2 = 'Assign string to object';
        Object obj3 = true;
        Object obj4 = l1;
        Object obj5 = accId;
        System.debug(obj1);
        System.debug(obj2);
        System.debug(obj3);
        System.debug(obj4);
        System.debug(obj5);

    }

 }


