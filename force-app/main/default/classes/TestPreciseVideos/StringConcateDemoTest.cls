@isTest
public class StringConcateDemoTest {
    @isTest
    private static void testConcate() {
        string r = StringConcateDemo.concateAndUpperCase('test', 'method1');
        System.debug(r);

        system.assert(r=='TEST, METHOD1');
        system.assertEquals('TEST, METHOD1', r);
    }
    @isTest
    private static void testConcateLower() {
        string r = StringConcateDemo.concateAndLowerCase('a', 'b');
        System.debug(r);

        system.assertEquals('test method1', r);//positive test
        system.assertNotEquals('TEST, METHOD1', r);//negative test
    }

    @isTest
    private static void testprintConcate() {
        StringConcateDemo.printConcate('TEST', 'METHOD1');
       
    }
    
    
}