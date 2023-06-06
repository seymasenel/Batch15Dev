public class Collections {
    public static string listaAssignment(integer x) {
        list<string> lstMonth = new list<string>{'Months'};
        string outputMonth= ''; 
        lstMonth.add('January');
        lstMonth.add('February');
        lstMonth.add('March');
        lstMonth.add('April');
        lstMonth.add('May');
        lstMonth.add('June');
        lstMonth.add('July');
        lstmonth.add('August');
        lstmonth.add('September');
        lstmonth.add('October');
        lstmonth.add('November');
        lstmonth.add('December');

        if (x>=lstMonth.size() || x<0){
            outputMonth='Not a valid month.';
        }else{
            outputMonth= lstMonth.get(x);
        }
        return outputMonth;
    }
    public static void listMethods(){
        list<string> methods = new list<string>{'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Saturday','Sunday'};

        methods.add(4,'Friday'); // add will add new elemnt 
        methods.set(4, 'Friday'); // set will override elemnet in the stated index 
        system.debug(methods);
        
        integer sizee= methods.size();
        system.debug('Size of methods list is --->' + sizee); 
       
        string lastOne = methods.get(sizee-1);
        system.debug('We can get last element in the list with get(size-1)--->' +  lastOne
        );
        
        system.debug('Removing last element of list--->'+ methods.remove(sizee-1));
        system.debug(methods);

        methods.add('Sunday');

        Boolean contn = methods.contains('Monday');
        system.debug('Is Methods list has -Monday-? ---> ' + contn);

        Boolean check = methods.isEmpty();
        System.debug('Is Methods list empty?---> ' + check);

        integer index = methods.indexOf('Wednesday');
        system.debug('Wednesday\'s list index munber is ' + index);

        system.debug('Cloning the list is--->' + methods.Clone());
   
        system.debug('-----------------------------------------');

        list<string> methods2 = new list<string>();

        methods2.addAll(methods);
        system.debug('Added -Methods- list to Methods2 list --->' + methods2);

        Boolean equall =methods2.equals(methods);
        system.debug('Methods = Methods2 ? ---> ' + equall);

        methods2.clear();
        system.debug('After we use clear method our methods2 list is empty.---->' + methods2 +'<------');
    }
    public static set<string> setMethods(list<string> listD){
        set<string> setD = new set<string>();
        setD.addAll(listD);
        setD.remove('Monday');
        system.debug(setD);

        boolean isThere = setD.contains('Monday');
        system.debug('Set has Monday?---> ' + isThere);
        setD.add('Monday');

        boolean check = setD.isEmpty();
        system.debug('SetD is Empty?-----> ' + check);

        integer sizee = setD.size();
        system.debug('Size of setD set is---> ' + sizee);
        
        set<string> setD2 = new set<string>();
        
        boolean result = setD2.addAll(setD);
        system.debug('Is orginal set changed? ----> ' + result);

        boolean compare = setD.containsAll(setD2);
        system.debug('SetD contains all elements of SetD2? ----> ' + compare);

        boolean equall = setD.equals(setD2);
        system.debug('SetD equals to SetD2? ----> '+ equall);

        integer hasCodee = setD2.hashCode();
        system.debug('SetD2 set has code?----> ' + hasCodee);

        system.debug('SetD2------------------>' + setD2);

        setD2.clear();
        system.debug('I am deleting all elements of set --->' + setD2+ '<-------');

       return setD;     
    }
    
 }