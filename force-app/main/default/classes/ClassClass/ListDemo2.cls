public  class ListDemo2 {
    public static void iterateList() {
        List<integer> intList = new list<integer>();
        intList.add(90);
        intList.add(15);
        intList.add(77); 
        intList.add(21);
        intList.add(15);
        intList.add(15);
        intList.add(90);
        intList.add(15);
        intList.add(77);
        intList.add(21);
        intList.add(15);
        intList.add(15);
        
        system.debug(intList);     
        //5x 90 =450
        
        //print each element one by one from the list
        
        //integer eachNumber ==> integer because list is of integer
            //eachNumber is variable name we will use inside for loop
       
            for( integer eachNumber  : intList){
                system.debug(' 5 x '+ eachNumber + ' = ' + eachNumber*5);
                //system.debug(eachNumber);
            }
        
    }
    public static integer add(integer x, integer y){
        return (x+y);
    }
    public static integer add(List<integer> l1){
        integer sum=0;
        system.debug(l1);
        for (integer eachNum : l1) {
            sum+=eachNum;
        }
        return sum;
    }
    public static void iterateListString(list <string> l2){
        system.debug(l2);
        for(string eachString : l2){
            system.debug(eachString + ' - its lentgh is ' + eachString.length());
        }
    }
    public static string add1(list<string> l3){
        system.debug(l3);
        string finalString='';
        for(string eachSttr: l3){
            finalString+= eachSttr + '||';
            system.debug(eachSttr);
        }
        return finalString;
    }    
    public static void iterateListString99(){
        list<string> ls = new list<string>{'list', 'set', 'map', 'array'};
         ls.add('methods');
         ls.add('constructor');

         list<string> newLS = new list<string>();
         //add eachString - length in the same list
            //ex; list
            //    list-4
            //    set
            //    set-3
        // we cannot modify(add or remove elements) in the LIST we are using in FOR EACH LOOP    
        for(string eachStr : ls){
            string temp = eachStr + '-' +eachStr.length();
            newLS.add(eachStr);
            newLS.add(temp);
        }
        system.debug(newLS);
    }
}

