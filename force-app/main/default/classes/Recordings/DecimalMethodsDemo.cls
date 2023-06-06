public class DecimalMethodsDemo {
    public void practicel() {
        decimal d1 = 7.4512478;

        decimal d1x =d1.setScale(2);
        system.debug(d1x);

        decimal d2 = 88.739475959;
        system.debug(d2.setScale(3));

        string s ='88.77';
        decimal ds = decimal.valueOf(s);
        system.debug(s + 5);
        system.debug(ds+5);
    }

    public void practicel2 (){
        decimal myMoney = 554.23351456498;

        decimal myMoney2 = myMoney.setScale(2);
        system.debug(myMoney2);

        string myMoney2str = myMoney.toPlainString();
        system.debug(myMoney2str);

        decimal myMoney3 = Decimal.valueOf(myMoney2str);
        system.debug(myMoney3);
    }
}