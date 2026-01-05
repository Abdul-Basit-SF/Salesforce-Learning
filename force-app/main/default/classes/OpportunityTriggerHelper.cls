public with sharing class OpportunityTriggerHelper {
    /*
Problem: Update Account Last_Deal_Date__c with latest Closed Won Opportunity CloseDate
Author: Abdul Basit
Date: 2026-01-05
*/
    public static void Helper(List<Opportunity> oppList) {
 //  Create a Map to track latest CloseDate per Account
    Map<Id, Date> accToLatestDate = new Map<Id, Date>();
    // Loop through all Opportunities
    for(Opportunity opp : oppList) {
        // 3️ Only consider Closed Won Opportunities
        if(opp.StageName == 'Closed Won' && opp.AccountId != null) {
            //  Check if this Account is already in Map
            //     If not, or if this CloseDate is later than existing, update map
            if(!accToLatestDate.containsKey(opp.AccountId) 
               || opp.CloseDate > accToLatestDate.get(opp.AccountId)) {
                accToLatestDate.put(opp.AccountId, opp.CloseDate);
            }
        }
    }
    //  Query all Accounts that need to be updated
    List<Account> accToUpdate = [SELECT Id, Last_Deal_Date__c 
                                 FROM Account 
                                 WHERE Id IN :accToLatestDate.keySet()];
    //  Loop through Accounts and set Last_Deal_Date__c
    for(Account acc : accToUpdate) {
        acc.Last_Deal_Date__c = accToLatestDate.get(acc.Id);
    }
    //  Update all Accounts in bulk
    update accToUpdate;
    }
}