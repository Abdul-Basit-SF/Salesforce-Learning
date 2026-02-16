public with sharing class ContactTriggerService {
    public static void updateAccountContactCount(Set<Id> accountIds) {
        
        if(accountIds == null || accountIds.isEmpty()) return;
        
        System.enqueueJob(
            new UpdateAccountContactCountQueueable(accountIds)
            );
    }
}