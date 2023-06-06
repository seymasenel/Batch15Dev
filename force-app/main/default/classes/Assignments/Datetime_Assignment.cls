public  class Datetime_Assignment {
    public void dateMethods() {
        
        date varDate = date.newInstance(2001, 01, 01);
        system.debug(varDate);
    }
    public void timeMethods() {

        time varTime = time.newInstance(18, 21, 29, 0000);
        system.debug(varTime);

    }
    public void datetimeMethods(){
        datetime varDatetime = datetime.newInstance(2001, 1, 1, 18, 21, 29);
        system.debug(varDatetime);
    }
}