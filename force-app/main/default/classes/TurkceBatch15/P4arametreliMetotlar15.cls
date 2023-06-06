public class P4arametreliMetotlar15 {
    public void printWelcome() {
        system.debug('Hosgeldiniz..');
    }
    public void welcomePerson(string isim){
        system.debug('Hosgeldiniz ' + isim);
    }
    public integer toplama(integer a, integer b){
        integer tplm = a + b;
        return tplm;
    }
    public boolean artikYil(date myDAte){
        integer myYear = myDate.year();
        boolean sonuc = date.isLeapYear(myYear);
        return sonuc;
    }
    //Parametre olarak bir string deger alan bir method y bu method parametre olarak gonderilen stringin karakter uzunlugunu bulalim.
    public integer uzunluk(string text){
        integer karakterUzunlugu = text.length();
        return karakterUzunlugu;
    }
}