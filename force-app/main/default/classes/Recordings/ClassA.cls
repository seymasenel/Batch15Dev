public class ClassA {
    public classA() {
        if(GeneralSetting.printFlag != 'Off'){
            system.debug('Class A constructor.');
        }
    }
    public classA(string p) {
        if(GeneralSetting.printFlag!='Off'){
            system.debug('Class A param constructor. p = ' +p);
        }
    }

    public static void classAmethod1(){
        if(GeneralSetting.printFlag!='Off'){
            system.debug('Class A method 1 print statement.');
        }
    }
}
