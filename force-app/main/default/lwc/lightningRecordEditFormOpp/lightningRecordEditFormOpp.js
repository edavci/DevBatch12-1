import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import OPP_OBJECT from '@salesforce/schema/Opportunity';
import ACCOUNT_FIELD from '@salesforce/schema/Opportunity.AccountId';
import NAME_FIELD from '@salesforce/schema/Opportunity.Name';
import TYPE_FIELD from '@salesforce/schema/Opportunity.Type';
import STAGE_FIELD from '@salesforce/schema/Opportunity.StageName';
import AMOUNT_FIELD from '@salesforce/schema/Opportunity.Amount';
import CLOSEDATE_FIELD from '@salesforce/schema/Opportunity.CloseDate';
export default class LightningRecordEditFormOpp extends LightningElement {
    recordId = "006Do000002lhwRIAQ";
    objectName = OPP_OBJECT;
    fields = {
        account: ACCOUNT_FIELD,
        name: NAME_FIELD,
        type: TYPE_FIELD,
        stage: STAGE_FIELD,
        amount: AMOUNT_FIELD,
        closeDate: CLOSEDATE_FIELD
    };

    successHandler(){
        const successToast = new ShowToastEvent({
            title:"success",
            message: "opportunity has been saved succcessfully",
            variant: "success"
        });
        this.dispatchEvent(successToast);
    }
}