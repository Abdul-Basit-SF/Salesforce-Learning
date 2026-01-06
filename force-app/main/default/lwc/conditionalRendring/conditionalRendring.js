import { LightningElement } from 'lwc';

export default class ConditionalRendring extends LightningElement {
    isLoggedIn = false;
    userName = 'Abdul Basit';

    handleLogIn(){
        this.isLoggedIn = 'true';
    }
    handleLogOut(){
        this.isLoggedIn = 'False';
    }
}