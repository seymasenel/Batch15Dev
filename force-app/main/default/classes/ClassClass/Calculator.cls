public  class Calculator {
    public integer add(integer a, integer b){
        integer sum = a + b;
        return sum;
    }
    public void add(Decimal a, decimal b){
        system.debug(a+b);
    }
    public integer add(integer z, integer x, integer c){
        integer sum = (z+x+c);
        return sum;
    }
    public boolean leapYearCheck(date dt){
        integer yr = dt.year(); //.year is method name which returns YEAR component of the date.
        //isLeapYear -> built in method of date class. Which returns true or false in year is leap or not
        boolean lp = date.isLeapYear(yr);
        return lp;
    }
}