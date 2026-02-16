/*🧩 Problem 1
When an Account is inserted, we want to:
    Wait
    Then update its Description field
    But do it asynchronously using Queueable */

public with sharing class AccountQueueable implements Queueable {
    Private List<id> accountIds;
    public AccountQueueable(List<id> accountIds){
        This.accountIds = accountIds;
    }
    public void execute(QueueableContext context){
        List<Account> accList = [SELECT Id, Description FROM Account WHERE Id IN :accountIds];
        for(Account acc : accList){
            acc.Description = 'Description Updated by Queueable Job';
        }
        update accList;
    }
}