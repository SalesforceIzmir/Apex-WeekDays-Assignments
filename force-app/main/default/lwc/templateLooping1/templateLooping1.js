import SystemModstamp from '@salesforce/schema/AcceptedEventRelation.SystemModstamp';
import { LightningElement } from 'lwc';

export default class TemplateLooping1 extends LightningElement {
    fruits = ["Apple", "Banana", "Mango", "Orange"];


    contacts = [
        {firstname: "Jeff", lastname: "Bezos", title: "Executive Chairman"},
        {firstname: "Satya", lastname: "Nadella", title: "Chief Executive Officer"},
        {firstname: "Sundar", lastname: "Pichai", title: "Chief Executive Officer"}
    ]
}