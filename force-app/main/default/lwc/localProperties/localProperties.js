import { LightningElement } from 'lwc';

export default class LocalProperties extends LightningElement {
    name; //undefined
    age = 29;
    fullname ="salesforce developer";
    location = {
        country: "USA",
        postalcode: "66666",

    };
    gender = "female";

}