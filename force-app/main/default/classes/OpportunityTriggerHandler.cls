public with sharing class OpportunityTriggerHandler {
    public static void handleBeforeInsert() {

    }
    public static void handleBeforeUpdate() {

    }
    public static void handleBeforeDelete() {

    }
    public static void handleAfterInsert(List<Opportunity> oppList) {
       for(Opportunity opp : oppList){
        if(opp.StageName == 'Closed won'){
            
        }
       }
    }
    public static void handleAfterUpdate() {

    }
    public static void handleAfterDelete() {

    }
    public static void handleAfterUndelete() {

    }

}