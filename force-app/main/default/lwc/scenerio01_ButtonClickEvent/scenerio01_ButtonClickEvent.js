import { LightningElement, track } from 'lwc';

export default class Scenerio01_ButtonClickEvent extends LightningElement {
    greeting = 'Hi Buddy'
        @track name = 'Salesforce'
        isChanged = false;
        changeHandle() {
            this.isChanged = !this.isChanged;
    
            if (this.isChanged) {
                this.greeting = 'Bye Buddy';
                this.name = 'LWC Learning';
            } else {
                this.greeting = 'Hi Buddy';
                this.name = 'Salesforce';
            }
        }
}