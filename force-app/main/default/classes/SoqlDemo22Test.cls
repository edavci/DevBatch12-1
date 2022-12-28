@isTest
public class SoqlDemo22Test {
    @isTest
    private static void testMethod1() {
        //1. prepare data
        Account acc1 = new account();
        acc1.Name = 'SI Test';
        acc1.Industry = 'Energy';

        Account acc2 = new account();
        acc2.Name = 'UI Test';
        acc2.Industry = 'Energy';

        Account acc3 = new account();
        acc3.Name = 'PI Test';
        acc3.Industry = 'Banking';

        List<account> listAcc = new list<account>{acc1, acc2, acc3};
        insert listAcc;

        List<contact> listContact = new list<Contact>();
        for (Integer i = 0; i < 300; i++) {
            contact c = new contact();
            c.Lastname = 'test soql';
            if (i < 100) {
                c.AccountId = acc1.id;
            } else if (i < 200) {
                c.AccountId = acc2.id;
            } else {
                c.AccountId = acc3.id;
            }
            listContact.add(c);
        }
        insert listContact;

        //2. test.starttest
        Test.startTest();
        SoqlDemo22.soqlChildToParent_1();
        Test.stopTest();
    }
}