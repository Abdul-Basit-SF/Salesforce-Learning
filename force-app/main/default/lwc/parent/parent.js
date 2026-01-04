import { LightningElement , api } from 'lwc';

export default class Parent extends LightningElement {
    memberStatus;
    updateMemberStatus(event){
      this.memberStatus = event.target.value;
    }
}