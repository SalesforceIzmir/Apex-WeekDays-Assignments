import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import CONTACT_OBJECT from '@salesforce/schema/Contact';
import { createRecord } from 'lightning/uiRecordApi';
export default class CreateRecordContact extends LightningElement {
    formdata={};
    changeHandler(event){
        const {name, value}=event.target;
        this.formdata[name]=value;
        console.log(this.formdata);
    }
    createContact(){
        const recordInput = {
            apiName : CONTACT_OBJECT.objectApiName,
            fields : this.formdata
        }
        createRecord(recordInput)
            .then(result =>{
                console.log(result);
                this.template.querySelector('form.contact').reset();
                const successEvent = new ShowToastEvent({
           
                    title: "Success",
                    message: "The account record has been saved successfully!",
                    variant:"success"
                });
                this.dispatchEvent(successEvent);
            })
            .catch(error=>{
                console.log(error);
            })
    }
    
 
}