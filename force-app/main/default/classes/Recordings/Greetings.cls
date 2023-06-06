public class Greetings {
   public string language;
    public string greetHello() {
        string greet;
        if(language=='Hindi'){
            greet='Namaste';
        }else if(language=='Turkish'){
            greet='Merhaba';
        }else if(language=='Russian'){
            greet='Privet';
        }else{
            greet='Helooo';
        }
        return greet;
    }
    public string greetingHello2(){
        string greet='';
        switch on language{
            when 'Hindi'{
                greet='Namaste';
            }when 'Turkish'{
                greet='Merhaba';
            }when 'Russian'{
                greet='Privet';
            }when else{
                greet='Hello Hello';
            }
        }
    }
    public string greetHello(integer n){
        string greetings;
     if(language=='English'){
           greetings='Hello ';
        }else if(language=='Hindi '){
           greetings='Namaste ';
        }else if(language=='Turkish'){
           greetings='Merhaba ';
        }else if(language=='Russian'){
           greetings='Privet';
        }else{
           greetings='Hello';
        }
        String finalReturnString= greetings;
        for(integer i=1; i<n; i++){
            finalReturnString = finalReturnString + ' ' + greetings;
        }
       return finalReturnString; 
    }
}