import { LightningElement, wire} from 'lwc';
import BigOpportunities from '@salesforce/apex/OpportunityCtrl.BigOpportunities';

const COLUMNS = [
    {label: "Opportunity Name", fieldName: "Name", type: "text"},
    {label: "Amount Type", fieldName: "Amount", type: "currency"},
    {label: "Stage", fieldName: "StageName", type: "text"},
    {label: "Type", fieldName: "Type", type: "text"}
];

export default class WiredApexOpportunity extends LightningElement {
    opps;
    columns = COLUMNS;

    @wire(BigOpportunities)
    oppHandler({data, error}){
        if(data){
            this.opps = data;

        }
        if(error){
            console.log(error);
        }
    }


}




   