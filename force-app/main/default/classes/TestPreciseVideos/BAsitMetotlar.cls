public class BAsitMetotlar {
    public void hosgeldin(){
        string message = 'Hosgeldiniz';
        System.debug(message);
    }

    public static string hosgeldinIsim(string isim) {
        string message = 'Hosgeldin' +  isim;
        return message;
    }

    public static integer toplama(integer a , integer b) {
        return a+b;
    }

    public static void ifNumbers(integer a , integer b) {
        if (a>b) {
            System.debug(a + ' sayisi ' + b + ' sayisindan buyuktur.');
        }else if(b>a){
            System.debug(b + ' sayisi ' + a + ' sayisindan buyuktur.');
        }else{
            System.debug(a + ' sayisi ' + b + ' sayisina esittir.');
        }
    }
}