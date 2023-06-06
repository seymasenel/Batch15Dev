@isTest
public class P4arametreliMethodlar15Test {
    @isTest
    private static void printWelcomeTest() {
        P4arametreliMetotlar15 pm =new P4arametreliMetotlar15();
        pm.printWelcome();
    }

    @isTest
    private static void welcomePersonTest() {
        P4arametreliMetotlar15 pm =new P4arametreliMetotlar15();
        pm.welcomePerson('Seyma');
    }
    
    @isTest
    private static void toplamaTest() {
        P4arametreliMetotlar15 pm =new P4arametreliMetotlar15();
        integer toplam = pm.toplama(11, 22);
        assert.areEqual(33, toplam);
    }

    @isTest
    private static void artikYilTest() {
        P4arametreliMetotlar15 pm =new P4arametreliMetotlar15();
        date dt = Date.newInstance(2023, 5, 24);
        Boolean result = pm.artikYil(dt);
        assert.isFalse(result);
    }

    @isTest
    private static void uzunlukTest() {
        P4arametreliMetotlar15 pm =new P4arametreliMetotlar15();
        integer lentgh = pm.uzunluk('all');
        assert.areEqual(3, lentgh);

    }

}