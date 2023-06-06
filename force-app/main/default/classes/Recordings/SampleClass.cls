public  class SampleClass {
    //static string
    public static string sampleStaticstring;

    //non-static string
    public string sampleString;

    //Static Mehod
    public static void sampleStaticMethod(){
        system.debug(sampleStaticstring); //Allowed.Static variable inside staticmethod.
        //system.debug(sampleString); //Nope. Non-static variable, in static method notAllowed.
        system.debug('Static methos called. Of course Enjoy');
    }

    //Classic non-static method. No params, no returns.
    public void sampleMethod(){
        system.debug('xxx' + sampleStaticstring);// Allowed. Static variable inside non-static method.
        system.debug(sampleString); //allowed. non- static variable, in non static method.
        system.debug('Non-static method called from instance. Cool!');
    }
 }
