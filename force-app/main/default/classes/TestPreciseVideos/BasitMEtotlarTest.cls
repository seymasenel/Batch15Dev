@isTest
public class BasitMEtotlarTest {
    @isTest
    private static void hosgeldinTest() {
        test.startTest();
        BasitMEtotlar bm = new BAsitMetotlar();
        bm.hosgeldin();
        test.stopTest();
    }

    @isTest
    private static void hosgeldinIsimTest() {
        test.startTest();
        string message =BAsitMetotlar.hosgeldinIsim('Seyma');
        test.stopTest();
        system.assertEquals('Hosgeldin Seyma', message);
    }

    @isTest
    private static void toplamaTest() {
        test.startTest();
        integer sum = BAsitMetotlar.toplama(5, 6);
        test.stopTest();
        system.assertEquals(11, sum);
    }

    @isTest
    private static void ifNumbersTest() {
        test.startTest();
        BAsitMetotlar.ifNumbers(6, 5);
        BAsitMetotlar.ifNumbers(5, 6);
        BAsitMetotlar.ifNumbers(5, 5);
        test.stopTest();
    }
}