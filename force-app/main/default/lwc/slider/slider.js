import { api, LightningElement } from 'lwc';
export default class Slider extends LightningElement {
    @api val;
    @api resetHandler() {
        this.val = 5;
    }
}