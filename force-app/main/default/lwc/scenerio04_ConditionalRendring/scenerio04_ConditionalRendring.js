import { LightningElement } from 'lwc';

export default class Scenerio04_ConditionalRendring extends LightningElement {
    displayMessage = false;
    Mentor = [{id: 1, name: 'Waqar'}, {id: 2, name: 'Irfan Malik'}];
    handleCheckboxChange(event) {
        this.displayMessage = event.target.checked;
    }
}