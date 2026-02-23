import { LightningElement, track } from 'lwc';

export default class LwcPractoce extends LightningElement {
    @track myDetails = {firstName :'Abdul' , lastName : 'Basit' , age : 22 , city : 'Haripur'};
    isChanged = false;
    changeHandle(event){
        if(this.isChanged){
            this.myDetails = {firstName :'Abdul' , lastName : 'Basit' , age : 22 , city : 'Haripur'};
        }else{
            this.myDetails = {firstName :'John' , lastName : 'Doe' , age : 30 , city : 'New York'};
        }
        this.isChanged = !this.isChanged;
    }
}