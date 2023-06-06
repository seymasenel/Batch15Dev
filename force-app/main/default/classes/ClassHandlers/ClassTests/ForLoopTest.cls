@isTest
public class ForLoopTest {
    @isTest
    private static void sumTest() {
        F5orLoop fl = new F5orLoop();
        fl.sum(5);
    }

    @isTest
    private static void helloTest() {
        F5orLoop fl = new F5orLoop();
        string msg = fl.hello('all');
        assert.isNull(msg);
        assert.areEqual('Hello 1 Hello 2 Hello 3', msg);
    }

}