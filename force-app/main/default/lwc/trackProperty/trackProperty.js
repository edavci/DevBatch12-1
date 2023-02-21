import { LightningElement, track } from 'lwc';

export default class TrackProperty extends LightningElement {
    @track location = {
        city: "Washington",
        country: "United States"
    };
    changeHandler(event) {
        this.location.city = event.target.value;

    }
}