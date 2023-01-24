@isTest 
public class SPTriggerHandlerTest{
    @isTest 
    private static void testSPFuture1(){
        Salesforce_Project__c sp1 = new Salesforce_Project__c();
        sp1.Project_Name__c = 'SP test1';
        sp1.Status__c = 'New';

        Salesforce_Project__c sp2 = new Salesforce_Project__c();
        sp2.Project_Name__c = 'SP test2';
        sp2.Status__c = 'New';

        List<Salesforce_Project__c> insSP = new List<Salesforce_Project__c>{sp1,sp2};
        insert insSP;

        Set<Id> setSPIds = new set<id> {sp1.id, sp2.id};
        
        Test.startTest();
        SalesforceProjectTriggerHandler.updateProjectDescription(setSPids);
        Test.stopTest();


        List<Salesforce_Project__c> allSP = [select id, description__c from Salesforce_Project__c];
        system.assert(allSP[0].Description__c.contains('future'));


    }
}