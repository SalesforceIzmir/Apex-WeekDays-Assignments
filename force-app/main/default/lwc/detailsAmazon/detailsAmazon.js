import { LightningElement, track} from 'lwc';

export default class DetailsAmazon extends LightningElement {
    @track details = {
        name: "Jeff Bezos",
        title: "CEO",
        company: "Amazon"
    };
    handleChange(event){
        this.details.company = event.target.value;
    }
}