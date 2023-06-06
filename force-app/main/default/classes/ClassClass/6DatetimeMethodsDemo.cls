public  class DatetimeMethodsDemo {
    public void calculateAgeInMonths() {
        date todayDAte = date.today();

        date seymaBirthDate = date.newInstance(1991, 9, 27);

        integer ageInMonths = seymaBirthDate.monthsBetween(todayDAte);
        System.debug('Seyma s age in months is ' + ageInMonths);
    }
    public void calculateAgeInDays(){
        date todayDAte = date.today();
        date seymaBirthDate = date.newInstance(1991, 9, 27);

        integer ageInDays = seymaBirthDate.daysBetween(todayDAte);
        system.debug(ageInDays);
    }

    public void subscriptionEndDate(){
        //First get today's date
        date subscriptionStartDate = date.today();

        date subscriptionEndDate = subscriptionStartDate.addDays(1000);
        system.debug('subscription end date: ' + subscriptionEndDate);
        
        //END date is today.
        //Subs was done for 1000 days
        //what is the sart date?
        date newEndDate = date.today();
        
        date newStartDate = newEndDate.addDays(-1000);
        system.debug('New start date => '+ newStartDate);
        //to just get YEAR component from DATE
        integer newSDYear = newStartDate.year();
        //to get MONTH componenet from DATE use month()
        integer newSDMonth =newStartDate.month();
        system.debug('Year of new start date is ' + newSDYear);
        system.debug('Month of new start date is ' + newSDMonth);
    }

    public void offerEndDateTime(){
        datetime offerStart =datetime.now();
        datetime offerEnd = offerStart.addHours(61);
        system.debug('Offer end datetime ' + offerEnd);
    }
}