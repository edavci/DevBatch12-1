@isTest
public with sharing class SoapCalloutsTest {

    @isTest
    private static void parksCalloutTest(){
  //1.set the mock
  ParksServicesMock mock = new ParksServicesMock();
        Test.setMock(WebServiceMock.class, mock);

  //2.test the mock
  String country = 'Turkiye';
  String[] parks = SoapCallouts.parksCallout(country);

  //3.do asserts
  System.assertEquals(2, parks.size());

    }

 @isTest
     private static void doAddCalloutTest(){
        //set to mock
        DoAddCalloutMock mock = new DoAddCalloutMock();
        Test.setMock(WebServiceMock.class, mock);
        //test the mock
        Double result = SoapCallouts.doAddCallout(10, 5);
        //do asserts
        System.assertEquals(15, result);

        
    }
}