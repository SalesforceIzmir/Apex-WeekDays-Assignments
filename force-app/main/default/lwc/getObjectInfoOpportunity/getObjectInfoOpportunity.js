import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';

export default class GetObjectInfoOpportunity extends LightningElement {
    defaultRtId;
    refinedPetroliumrtId;
    
    @wire(getObjectInfo, {objectApiName: OPPORTUNITY_OBJECT})
    opportunityInfoHandler({data, error}){
        if(data){
            console.log(data);
            this.defaultRtId = data.defaultRecordTypeId;
            const rtIds = data.recordTypeInfos;
            this.refinedPetroliumrtId = Object.keys(rtIds).find(rtId => rtIds[rtId].name === "Refined Petrolium");
        }
        if(error){
            console.log(error);
        }
    }


}