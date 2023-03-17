import { LightningElement } from 'lwc';
export default class ModalParent extends LightningElement {
    showModal = false;
    createEmployee() {
        this.showModal = true;
    }
    closeHandler(event) {
        console.log(event);
        this.showModal = false;
    }
}