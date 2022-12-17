trigger AccountTrigger2 on Account (before insert,before update, after insert,after update) {
     
        if(trigger.isAfter && trigger.isUpdate){
     AccountTriggerHandler.updateBilingCity(Trigger.New, trigger.Old, Trigger.NewMap,Trigger.OldMap);
        }

}