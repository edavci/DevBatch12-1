@isTest //is for class
public class Calculator3Test {
    private static void aNormalMethod(){
    system.debug('this is still allowed');
}

    //1.static
    //2.void
    //3.no parameters
    //4.test method can be Public and Private.
    @isTest //is for method
    private static void testMessage(){

        //call two methods from here
        Calculator3 c= new Calculator3();
        c.printNewMessage('printing from test method now.');
    }
   @isTest
    private static void testAdd1(){
        Calculator3 c= new Calculator3();
        integer sum1 = c.add(10, 15);
        //we have Not yet verified it.
        //as per our human calculation -> sum1 => 25
        system.assertEquals(25, sum1);
    }

    @isTest
    private static void testAdd21(){
        Calculator3 c= new Calculator3();
        integer sum1 = c.add(10,15,25);
        //we have Not yet verified it.
        //as per our human calculation -> sum1 => 25
        system.assertEquals(50, sum1);
}
 }