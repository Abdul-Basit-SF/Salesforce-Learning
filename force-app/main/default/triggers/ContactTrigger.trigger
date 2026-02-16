/*🏢 Business Requirement 01
Whenever:
    A Contact is inserted, updated, deleted, or undeleted
    We must:
    Recalculate total number of Contacts for related Account
    Update Account field:
    Total_Contacts__c
    Must be:
    Bulk safe
    Scalable
    Clean architecture
    Using Trigger Framework
    Using Queueable for async processing */
trigger ContactTrigger on Contact (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    ContactTriggerDispacher.dispatch(Trigger.operationType);
}