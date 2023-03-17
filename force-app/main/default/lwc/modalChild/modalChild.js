import { LightningElement } from 'lwc';
import EMP_OBJECT from '@salesforce/schema/Employee__c';
export default class ModalChild extends LightningElement {
    objectName = EMP_OBJECT;
    clickHandler() {
        const closeEvent = new CustomEvent('close');
        this.dispatchEvent(closeEvent);
    }
}