public class F5orLoop {
    //1 den n'ye kadar sayilarin toplamini veren ve integer bir parametre alan bir metot yazin.
    public void sum (integer n) {
        integer toplam=0;
        for(integer i=1; i<=n; i++){
            system.debug('For loop dongusu ' + i +' defa dondu..');
            toplam += i;
            system.debug('Ara toplam => ' + toplam );
        }
        system.debug('Genel toplam => ' + toplam);
    }
    //String bir paramete alan bir metot yazin. Bu metot stringin uzunlugu kadar yan yana Hello mesaji yazdirsin.
    public string hello(string text){
        integer uzunluk = text.length();  
        string message=''; 
        for(integer i=1; i<=uzunluk; i++){
            message += ' Hello' + i;
        }
        return message;
    }
}