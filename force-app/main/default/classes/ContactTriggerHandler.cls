public class ContactTriggerHandler {
    public static void contactUpdateValidation1(List<contact> cntTriggerNew, List<contact> cntTriggerOld,
                                          Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){
             //.AddError is allowed in Trigger.NEW.
             //it is not allowed in trigger.old
             for(contact eachContact: cntTriggerNew){
                 contact oldContact = cntTriggerOldMap.get(eachContact.id);
                 if(oldContact.LeadSource == 'Partner Referral'){
                     eachContact.addError('Cannot update contact where lead source is Partner Referral');
                 }
             }
 
    }
 
    public static void contactUpdateValidation2(List<contact> cntTriggerNew, List<contact> cntTriggerOld,
     Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){
         for(contact eachContact: cntTriggerNew){
                 contact oldContact = cntTriggerOldMap.get(eachContact.id);
                 if(oldContact.LeadSource != eachContact.LeadSource){
                     string customValidation = system.label.contactValidation2;//Burda error aliyorum hocaya sor!!!!!
                     eachContact.LeadSource.addError(costumValidation);
                 }
             }
     }
 }
// public class ContactTriggerHandler {
//     public static void contactUpdateValidation1(List<contact> cntTriggerNew, List<contact> cntTriggerOld,
//                                           Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){
//              //.AddError is allowed in Trigger.NEW.
//              //it is not allowed in trigger.old
//              for(contact eachContact: cntTriggerNew){
//                  contact oldContact = cntTriggerOldMap.get(eachContact.id);
//                  if(oldContact.LeadSource == 'Partner Referral'){
//                      eachContact.addError('Cannot update contact where lead source is Partner Referral');
//                  }
//              }
 
//     }
 
//     public static void contactUpdateValidation2(List<contact> cntTriggerNew, List<contact> cntTriggerOld,
//      Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){
//          for(contact eachContact: cntTriggerNew){
//                  contact oldContact = cntTriggerOldMap.get(eachContact.id);
//                  if(oldContact.LeadSource != eachContact.LeadSource){
//                      eachContact.LeadSource.addError('CANNOT UPDATE LEAD SOURCE. Please user!');
//                  }
//              }
//      }
//  }


//validation rules addError method is only allowed in trigger.new.
// public class ContactTriggerHandler {
//     public static void contactUpdateValidation1(List<contact> cntTriggerNew, List<contact> cntTriggerOld, Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){
//              //.AddError is allowed in Trigger.NEW.
//              //it is not allowed in trigger.old
//              for(contact eachContact: cntTriggerNew){
//                  contact oldContact = cntTriggerOldMap.get(eachContact.id);
//                  if(oldContact.LeadSource == 'Partner Referral'){
//                      eachContact.addError('Cannot update contact where lead source is Partner Referral');
//                  }
//        }
//     }
//     //2.Dont allow user to update Lead Source.
//     public static void contactUpdateValidation2(List<contact> cntTriggerNew, List<contact> cntTriggerOld, Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){

//         for(contact eachContact: cntTriggerNew){
//             contact oldContact = cntTriggerOldMap.get(eachContact.id);

//             if(oldContact.LeadSource != eachContact.LeadSource){
//                 eachContact.LeadSource.addError('Cannot update Lead Source. Please user!');
//             }

//     }
//  }
// }
 