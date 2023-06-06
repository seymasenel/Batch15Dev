public  class IfElseConditinal {
        //integer bir parametre alan bir metot yazin. Bu metot gelen parametredeki sayinin pozitif mi negatif mio oldugunu bize donsun.
    public string positiveOrNegative(integer sayi) {
        string sayiDurumu;
        if(sayi>0){
            sayiDurumu ='Pozitif';
        }else if(sayi<0){
            sayiDurumu ='Nagatif';
        }else{
            sayiDurumu='Zero';
        }
        return sayiDurumu;
    }
     /*3 integer parameter alan, bu notlarin ortalamasina gore
    0-24  => F
    25-44 => E
    45-54 => D
    55-69 => C
    70-84 => B
    85-100 => A sonuclarini dondursun..*/
    public string ortalama(integer x, integer y, integer z){
        string grade;
        decimal ort = (x+y+z)/3;
        if(ort>=0 && ort<=100){
            if(ort<25){
                grade='F';
            }else if(ort<45){
                grade='E';
            }else if(ort<55){
                grade='D';
            }else if(ort<70){
                grade='C';
            }else if(ort<85){
                grade='B';
            }else {
                grade='A';
            }
        
        } else {
            grade = 'Hatali Notlar girdiniz tekrar kontrol ediniz.';
        }
       return grade; 
     }
        /*Tas kagit makas oyununu iki parametreli sekilde metot 1. Oyuncu kazandi, 2. Oyuncu kazandi veya berabere
             durum1   durum2  durum3 durum4  durum5 durum6
    player 1  tas      tas    kagit  kagit    makas  makas
    player 2  makas    kagit  makas  tas      tas    kagit
    kazanan  player1  player2 p2      p1      p2      p1 */
    public string tasKagitMakas(string player1, string player2) {
        string kazanan;
        if ((player1 == 'tas' && player2 == 'makas') || (player1 == 'kagit' && player2 == 'tas') || (player1 == 'makas' && player2 == 'kagit')) {
            kazanan = 'Player 1';
        } else if ((player1 == 'tas' && player2 == 'kagit') || (player1 == 'kagit' && player2 == 'makas') || (player1 == 'makas' && player2 == 'tas')) {
            kazanan = 'Player 2';
        } else if ((player1 == 'tas' && player2 == 'tas') || (player1 == 'kagit' && player2 == 'kagit') || (player1 == 'makas' && player2 == 'makas')) {
            kazanan = 'beraberlik';
        } else {
            kazanan = 'hatali parametreler girdiniz. tekrar deneyin..';
        }
        return kazanan;
    }
    /*1.Parametredeki meyveye göre meyvenin fiyat bilgisini dönen bir parametreli method createedin.Switch statementini kullanın.
    Orange=0.59
    Apple=0.32
    Banana=0,48
    Cherry=3,00
    Mango=2.79
    Watermelon=6,89*/
    public string switchMethod(string meyve) {
        string result;
        switch on meyve {
            when 'Orange' {
                result = 'Oranges are $0.59.';
            }
            when 'Apple' {
                result = 'Apples are $0.32.';
            }
            when 'Banana' {
                result = 'Bananas are $0.48.';
            }
            when 'Cherry' {
                result = 'Cherries are $3.00.';
            }
            when 'Mango' {
                result = 'Mongoes are $2.79.';
            }
            when 'Watermelon' {
                result = ' Watermelon are $6.89.';
            }
            when else {
                result = 'Sorry, we are out of ' + meyve;
            }
        }
        return result;
    }
}

 