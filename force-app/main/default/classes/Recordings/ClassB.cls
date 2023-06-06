public class ClassB {
    public classB() {
        if(GeneralSetting.printFlag != 'Off'){
            system.debug('Class B constructor.');
        }
    }
    public classB(string p) {
        if(GeneralSetting.printFlag!='Off'){
            system.debug('Class B param constructor. p = ' +p);
        }
    }

    public static void classBmethod1(){
        if(GeneralSetting.printFlag!='Off'){
            system.debug('Class B method 1 print statement.');
        }
    }
}
