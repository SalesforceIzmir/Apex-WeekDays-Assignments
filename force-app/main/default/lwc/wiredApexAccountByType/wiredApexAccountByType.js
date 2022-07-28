import { LightningElement, wire } from 'lwc';
import getAccountByType from '@salesforce/apex/AccountCtrl.getAccountByType';

export default class WiredApexAccountByType extends LightningElement {
    accountType = "Prospect";
    accounts;

    @wire(getAccountByType, {type: '$accountType'})
    accountHandler({data, error}){
        if(data){
            this.accounts = data;   
    
        }   
        }
        if(error){
            console.log(error);

    }
}