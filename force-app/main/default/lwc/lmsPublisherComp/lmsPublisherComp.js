import { LightningElement } from 'lwc';
export default class LmsPublisherComp extends LightningElement {
    messageValue;
    changeHandler(event) {
        this.messageValue = event.target.value;
    }
    publishMessage() {
        
    }
}