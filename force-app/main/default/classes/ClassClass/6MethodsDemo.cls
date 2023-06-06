public  class MethodsDemo {
    public void welcomeMessage() {
        system.debug('Hi there, welcome to the jungle guyss!!');
    }
    public void samplePrintMessage(string message){
    system.debug(message);
    }
    public void newMessage(string name){
    system.debug('Hi ' + name + ', welcome to the world apex');
    }

    public string returnMessage(string name){
    system.debug('Inside returnMessage method');
    string str = 'Hey ' + name + ', nice to meet you Seymaa';
    return str;
    }
}