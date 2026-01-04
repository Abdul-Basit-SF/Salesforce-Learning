trigger OpportunityTrigger on Opportunity (after insert , after update) {
OpportunityTriggerDispatcher.dispatch(Trigger.operationType);
}