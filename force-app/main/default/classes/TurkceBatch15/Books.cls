public class Books {
    
    string kitapAdi;
    string yazar;
    decimal fiyat;
    static integer kitapSayisi = 0; 
    
    public Books(){
       kitapSayisi++;
       System.debug('Kütüphanemize yeni bir kitap eklendi. Kitap sayimiz ' + kitapSayisi + ' oldu.');
    }

    public void setKitapAdi(string kitapAdi) {
        this.kitapAdi = kitapAdi;
    }

    public String getKitapAdi() {
        return this.kitapAdi;
    }

    public void setYazar(string yazar) {
        this.yazar = yazar;
    }

    public String getYazar() {
        return this.yazar;
    }

    public void setFiyat(Decimal fiyat) {
        this.fiyat = fiyat;
    }

    public Decimal getFiyat() {
        return this.fiyat;
    }

    public void details() {
        System.debug('Kitap adi : ' + this.kitapAdi );
        System.debug('Yazar : ' + this.yazar);
        System.debug('Fiyat : ' + this.fiyat);
        System.debug('Toplam Kitap Sayisi : ' + kitapSayisi);
    }

    public static void toplamKitapSayisi() {
        System.debug('Toplam Kitap sayisi = ' + kitapSayisi);
    }
   
}