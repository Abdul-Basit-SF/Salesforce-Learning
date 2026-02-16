public with sharing class UpdateAccountContactCountQueueable implements Queueable{
    private Set<Id> accountIds;
    
    public UpdateAccountContactCountQueueable(Set<Id> accountIds){
        this.accountIds = accountIds;
    }
    
    public void execute(QueueableContext context){
        
        Map<Id, Integer> contactCountMap = new Map<Id, Integer>();
        
        // Aggregate query to count contacts per account
        for(AggregateResult ar : [
            SELECT AccountId accId, COUNT(Id) total
            FROM Contact
            WHERE AccountId IN :accountIds
            GROUP BY AccountId
        ]) {
            contactCountMap.put(
                (Id) ar.get('accId'),
            (Integer) ar.get('total')
                );
        }
        
        List<Account> accountsToUpdate = new List<Account>();
        
        for(Id accId : accountIds){
            
            Integer total = contactCountMap.containsKey(accId) ? contactCountMap.get(accId) : 0;
            
            accountsToUpdate.add(
                new Account(
                Id = accId,
            Total_Contacts__c = total
                )
                );
        }
        
        if(!accountsToUpdate.isEmpty()){
            update accountsToUpdate;
        }
    }
}