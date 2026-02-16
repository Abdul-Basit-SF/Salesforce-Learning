public with sharing class ContactTriggerDispacher {
    
    public static void dispatch(System.TriggerOperation operationType) {
        
        switch on operationType {
            
            when BEFORE_INSERT {
                // Add logic here if needed
            }
            
            when BEFORE_UPDATE {
                // Add logic here if needed
            }
            
            when BEFORE_DELETE {
                // Add logic here if needed
            }
            
            when AFTER_INSERT {
                ContactTriggerHandler.handleAfterUpsert(Trigger.new);
            }
            
            when AFTER_UPDATE {
                ContactTriggerHandler.handleAfterUpsert(Trigger.new);
            }
            
            when AFTER_DELETE {
                ContactTriggerHandler.handleAfterDelete(Trigger.old);
            }
            
            when AFTER_UNDELETE {
                ContactTriggerHandler.handleAfterUpsert(Trigger.new);
            }
        }
    }
}