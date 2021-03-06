/*Validation - Close date can not be updated less than what is already present on the Opportunity record.
For example : An opportunity with close date as 5th August 2022 is there and If user tries to update the close date to 4th August 2022 or less than that then user should get an error as follows - 'Close Date can not be update to less that what already provided'.*/
public class OpportunityTriggerHandler {
    public static void  OpportunityCloseDate(List<opportunity> oppTriggerNew, 
                                List<opportunity> oppTriggerOld,
                                Map< Id,opportunity> oppTriggerNewMap,
                                Map< Id,opportunity> oppTriggerOldMap) {
        for(opportunity opp: oppTriggerNew){
            if(opp.closeDate < oppTriggerOldMap.get(opp.Id).closeDate){
                opp.closeDate.addError('Close Date can not be update to less that what already provided');

            }
        }

    }
}