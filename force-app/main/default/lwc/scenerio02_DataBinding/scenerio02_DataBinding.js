import { LightningElement } from 'lwc';

export default class Scenerio02_DataBinding extends LightningElement {
    name = '';
    handleNameChange(event) {
        this.name = event.target.value;
    }
}