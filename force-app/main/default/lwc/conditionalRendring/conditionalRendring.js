import { LightningElement } from 'lwc';

export default class ConditionalRendring extends LightningElement {
    isLoggedIn = false;
    userName = 'Abdul Basit';

    handleLogIn(event){
        this.isLoggedIn = 'true';
    }
    handleLogOut(event){
        this.isLoggedIn = 'false';
    }
}