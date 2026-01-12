import { LightningElement } from 'lwc';

export default class Iterator extends LightningElement {
    students = [
        {
         id:1,
         name: 'Ali',
         courses:['Math','Computer','English']
        },
        {
         id:2,
         name: 'Hassan',
         courses:['Math','Computer','English','Biology']
        },
        {
            id:3,
            name: 'Ahmad',
            courses:['Math','Computer','Chemistry']
        }
    ]
}