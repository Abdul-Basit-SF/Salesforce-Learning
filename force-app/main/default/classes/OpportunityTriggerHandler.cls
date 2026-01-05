public with sharing class OpportunityTriggerHandler {
    public static void handleBeforeInsert() {

    }
    public static void handleBeforeUpdate() {

    }
    public static void handleBeforeDelete() {

    }
    public static void handleAfterInsert(List<Opportunity> oppList) {
     OpportunityTriggerHelper.Helper(oppList);
    }

    public static void handleAfterUpdate(List<Opportunity> oppList) {
     OpportunityTriggerHelper.Helper(oppList);
    }
    public static void handleAfterDelete() {

    }
    public static void handleAfterUndelete() {

    }

}