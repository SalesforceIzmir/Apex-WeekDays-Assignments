trigger Opportunity on Opportunity (before insert, before update, after insert, after update) {
 if(trigger.isBefore && trigger.isUpdate){
    OpportunityTriggerHandler.OpportunityCloseDate(Trigger.New, 
                                                   Trigger.Old, 
                                                   Trigger.NewMap, 
                                                   Trigger.OldMap);
                                                   
 }
}



// trigger Opportunity on Opportunity (before insert, before update, after insert, after update) {
//     /*28. Bir Opportunity update edildiğinde description bölümünü aşağıda görülen şekilde düzenleyen bir trigger tasarlayınız.*/
//     //Amound and Stage update olursa new and old Amount ve stage i description da yazdir.
//     if(Trigger.isBefore && Trigger.isUpdate){
//         for(Opportunity oprt : Trigger.new){
//             Opportunity oldoprt = Trigger.oldMap.get(oprt.Id);

//             if(oprt.Amount != oldoprt.Amount && oprt.StageName != oldoprt.StageName){
//                 oprt.Description = ' Amount and Stage Name is updated = new Amount is =  ' + oprt.Amount + ' old amount is = ' + oldoprt.Amount + ' New Stage is = ' + oprt.StageName + ' old Stage is = ' + oldoprt.StageName;
//             }
//             else if(oprt.StageName != oldoprt.StageName){
//                 oprt.Description = ' Stage Name is updated, new stage is = ' + oprt.StageName + ' old Stage is = ' + oldoprt.StageName;
//             }
//             else if(oprt.Amount != oldoprt.Amount){
//                 oprt.Description = 'Amount is updated : new Amount is = ' + oprt.Amount + ' old Amount is ' + oldoprt.Amount;
//             }
//             else if(oprt.Amount == oldoprt.Amount && oprt.StageName == oldoprt.StageName){
//                 oprt.Description = ' Amount and Stage is not Updated';
//             }
//         }
//     }

//}