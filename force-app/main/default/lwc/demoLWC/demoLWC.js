import { LightningElement, api } from 'lwc';

export default class DemoLWC extends LightningElement {
    @api recordId;
    @api objectApiName;
    // fields = ['AccountId', 'Name', 'Email', 'Title', 'Phone'];
}