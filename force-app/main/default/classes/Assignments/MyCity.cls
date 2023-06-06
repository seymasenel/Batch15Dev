public  class MyCity {
    public void stringMethod(){
     
     string devMe = 'I am a salesforce Developer.';
     
     boolean devMe2 = devMe.contains('force');
     system.debug('Cumlede force kelimesi var mi? ' + devMe2);
 
     integer devMe3 = devMe.length();
     system.debug('Cumledeki karakter sayisi: ' + devMe3);
 
     string devMe4 = devMe.toUpperCase();
     system.debug('Buyuk harfli yeni cumle --> ' + devMe4 );
    }
    public void printString(integer x, string message){
        for(integer i=1; i<x; i++){
            system.debug(message+ ' '+ i);
        }
    }
 }