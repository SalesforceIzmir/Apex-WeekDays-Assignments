import { LightningElement, track } from 'lwc';

export default class TrackProperty extends LightningElement {
    @track location = {
        city: "Chicago",
        country: "USA",
        postalCode: "78356"
    };
    handleChange(event){
        this.location.city = event.target.value;
    }
}