trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert,after insert,before update,after update) {
    if(trigger.isAfter && trigger.isUpdate){
        SalesforceObjectHandlerclasdevasgn.method1(trigger.new,trigger.newMap,trigger.oldMap);
        }
}