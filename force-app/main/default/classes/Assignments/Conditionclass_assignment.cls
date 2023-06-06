public  class Conditionclass_assignment {
    public string  ifClassMethod (integer value) {
        string outputMonth = 'Not a valid Month';
        if(value == 1){
            outputMonth = 'January';
        }else if(value == 2){
           outputMonth ='February';
        }else{
            outputMonth='Not a valid Month';
        }
        return outputMonth;
    }
    public string caseMethod(string month){
        string outputQuarter = 'Enter a proper Month name';

        switch on month{
            when 'January', 'February', 'March'{
                outputQuarter ='Quarter 1';
            }
            when 'April', 'May', 'June'{
                outputQuarter ='Quarter 2';
            }
            when 'July', 'August', 'September'{
                outputQuarter ='Quarter 3';
            }
            when 'October', 'November', 'December'{
                outputQuarter ='Quarter 4';
            }
            when else{
                outputQuarter ='Not a valid Quarter';
            }
        }
        return outputQuarter;
    }
}