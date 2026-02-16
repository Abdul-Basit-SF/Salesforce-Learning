public with sharing class ContactTriggerHandler {
   public static void handleAfterUpsert(List<Contact> newList) {
        Set<Id> accountIds = extractAccountIds(newList);
        ContactTriggerService.updateAccountContactCount(accountIds);
    }

    public static void handleAfterDelete(List<Contact> oldList) {
        Set<Id> accountIds = extractAccountIds(oldList);
        ContactTriggerService.updateAccountContactCount(accountIds);
    }

    private static Set<Id> extractAccountIds(List<Contact> records) {
        Set<Id> accountIds = new Set<Id>();
        for(Contact con : records){
            if(con.AccountId != null){
                accountIds.add(con.AccountId);
            }
        }
        return accountIds;
    }
}