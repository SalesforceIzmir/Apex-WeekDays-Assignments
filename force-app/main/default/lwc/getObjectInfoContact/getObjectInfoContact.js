import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';


import CONTACT_OBJECT from '@salesforce/schema/Contact';

export default class GetObjectInfoContact extends LightningElement {
    defaultRtId;
    supplierRtId;

    @wire(getObjectInfo, {objectApiName: CONTACT_OBJECT})
    contactInfoHandler({data, error}) {
        if(data){
            console.log(data);
            this.defaultRtId = data.defaultRecordTypeId;
            const rtIds = data.recordTypeInfos;
            this.supplierRtId = Object.keys(rtIds).find(rtId => rtIds[rtId].name === "Supplier Contact");
        }
        if(error){
            console.log(error);
        }
    }
}