import { LightningElement , api } from 'lwc';

export default class LearningLWC extends LightningElement {
    myName = 'Abdul Basit';
    @api myFriendName = 'Ali';
}