public with sharing class OpportunityTriggerDispatcher {
    public static void dispatch(system.TriggerOperation operationType) {
      switch on operationType {
        WHEN Before_Insert {

    }
        WHEN Before_Update {

    }
        WHEN Before_Delete {

    }
        WHEN After_Insert {
           OpportunityTriggerHandler.handleAfterInsert(Trigger.new);
    }
        WHEN After_Update {

    }
        WHEN After_Delete {

    }
        WHEN After_UnDelete {

    }
}
}
}