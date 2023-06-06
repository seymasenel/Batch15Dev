//One Test class per class or trigger
//@istest annotation is used to make our class a TEST Class

@isTest
public class Calculator9Test {
    //create test method inside test class
        //test method means we are write method toTEST a unit of our actual code
    //reqfor test method - public or private, static, return void, and take no
    @isTest
    public static void testMethod1() {
        Calculator9 c = new Calculator9();
        c.add(1.1, 8.5);
    }
    @isTest
    private static void testAddMethod2(){
        Calculator9 c = new Calculator9();
        integer sum = c.add(5,5,5);
        //assertion
        system.assertEquals(15, sum); // old way code will have this assertion
        assert.areEqual(15, sum); // new way new code should have this asserttion
    }
    @isTest
    private static void leapYearChecktest(){
        Calculator9 c = new Calculator9();
        boolean b = c.leapYearCheck(date.today());
        system.assert(!b);

        //it will fail if b is true
        Assert.isFalse(b);//this assert will be succesfull if boolean is FALSE
        
        //it will faild if B is false.
        Assert.isTrue(!b);//this assert will be succesfull if boolean is TRUE 

        system.assertEquals(false, b);
        Assert.areEqual(false, b);
    }

}
