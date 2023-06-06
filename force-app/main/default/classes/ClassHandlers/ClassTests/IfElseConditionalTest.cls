@isTest
public class IfElseConditionalTest {
    @isTest
    private static void positiveOrNegativeTest() {
        IfElseConditional2 iec = new IfElseConditional2();
        string msg = iec.positiveOrNegative(5);
        assert.areEqual('Pozitif', msg);
        string msg2 = iec.positiveOrNegative(-1);
        assert.areEqual('Nagatif', msg2);
        string msg3 = iec.positiveOrNegative(0);
        assert.areEqual('Zero', msg3);
    }

    @isTest
    private static void phoneTest() {
        IfElseConditional2 iec = new IfElseConditional2();
        string msg = iec.phone('2124561234');
        assert.isNotNull(msg);
        string msg2 = iec.phone('2164561456');
        assert.isNotNull(msg2);
        string msg3 = iec.phone('3124564762');
        assert.isNotNull(msg3);
        string msg4 = iec.phone('123ji456451');
        assert.isNotNull(msg4);
    }
}