import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
    name; //undefined
    fullName = "Salesforce Developer"; //string
    age = 35;
    location = {
        city: "Chicago",
        country: "USA",
        postalCode: "35353"
    };//object
    fruits = ["Banana", "Strawberry", "Watermelon"]; //array

    //write methods
    getLocation(){
        return this.location.city;

    }
} 
    