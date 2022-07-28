import { getFieldValue, getRecord, updateRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import SUBJECT_FIELD from '@salesforce/schema/Case.Subject';
import DESCRIPTION_FIELD from '@salesforce/schema/Case.Description';
import PRIORITY_FIELD from '@salesforce/schema/Case.Priority';

const FIELDS = [SUBJECT_FIELD, DESCRIPTION_FIELD, PRIORITY_FIELD];

export default class UpdateRecordCase extends LightningElement {
    recordId = "5008c00001HkhX9AAJ";
    formdata = {};
    subject;
    description;
    priority;

    @wire(getRecord, {recordId: '$recordId', fields: FIELDS})
    caseRecordHandler({data, error}) {
        if (data) {
            this.subject = getFieldValue(data, SUBJECT_FIELD);
            this.description = getFieldValue(data, DESCRIPTION_FIELD);
            this.priority = getFieldValue(data, PRIORITY_FIELD);
        }
        if (error) {
            console.error(error);
        }
    }

    get priorites() {
        return [
            {label: "High", value: "High"},
            {label: "Medium", value: "Medium"},
            {label: "Low", value: "Low"}
        ]
    }

    changeHandler(event) {
        const {name, value} = event.target;
        this.formdata[name] = value;
        this.formdata["Id"] = this.recordId;
    }

    updateCase() {
        const recordInput = {fields: this.formdata};
        updateRecord(recordInput)
            .then(result => {
                console.log(result);
                this.prepareToast("Success", "Case Updated!", "success")
            })
            .catch(error => {
                console.log(error);
                this.prepareToast("Error", "Update Failed!", "error")
            })
    }

    prepareToast(title, message, variant) {
        const toast = new ShowToastEvent({title, message, variant});
        this.dispatchEvent(toast);
    }
}