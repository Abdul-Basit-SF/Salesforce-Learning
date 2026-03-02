import { LightningElement } from 'lwc';

export default class Scenerio03_SimpleCalculator extends LightningElement {
    firstNumber = " ";
    secondNumber = " ";
    result = 0;

    numberChangeHandler(event) {
        if (event.target.label === 'Enter First Number') {
            this.firstNumber = event.target.value;
        } else if (event.target.label === 'Enter Second Number') {
            this.secondNumber = event.target.value;
        }
    }

    calculateHandler(event){
        let lableelement = event.target.label;
        if(lableelement === 'Add'){
            this.result = parseInt(this.firstNumber) + parseInt(this.secondNumber);
        } else if(lableelement === 'Subtract'){
            this.result = parseInt(this.firstNumber) - parseInt(this.secondNumber);
        } else if(lableelement === 'Multiply'){
            this.result = parseInt(this.firstNumber) * parseInt(this.secondNumber);
        } else if(lableelement === 'Divide'){
            this.result = parseInt(this.firstNumber) / parseInt(this.secondNumber);
        }
        this.firstNumber = " ";
        this.secondNumber = " ";    
    }
    
}