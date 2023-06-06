public  class Datetime_Assignment2 {
    public void diffofDate() {
       
        date varTomorrowDate = date.newInstance(2023, 4, 5);
        system.debug(varTomorrowDate);
        
        date varTodaysDate = date.newInstance(2023, 4, 4);
        system.debug(varTodaysDate);

        integer daysBetween = varTodaysDate.daysBetween(varTomorrowDate);
        system.debug('Days difference between varTodayDate and varTomorrowDate ==> ' +daysBetween);
    }
    public void Timecheck(){
       
        datetime varTomorrowDatetime = Datetime.newInstance(2023, 4, 5, 7, 00, 00);
        system.debug('Tomorrow is ==> ' + varTomorrowDatetime);

        datetime var10DaysDatetime = Datetime.newInstanceGmt(2023, 4, 14, 7, 00, 00);
        system.debug('The days is 10 days later is ==> ' + var10DaysDatetime);

        long varDatetimeLong = 12339874361L;
        datetime longDate = datetime.newInstance(varDatetimeLong);
        system.debug('longDate is ==> ' + longDate);

        datetime varTomorrowDatetime1 = varTomorrowDatetime.addDays(7);
        system.debug('varTomorrowDatetime +7 days ==> ' + varTomorrowDatetime1 );

        datetime var10DaysDatetime1 = var10DaysDatetime.addDays(10);
        system.debug(' var10DaysDatetime +10 days ==> ' + var10DaysDatetime1);
    }
}