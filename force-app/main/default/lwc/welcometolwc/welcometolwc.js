import { LightningElement } from 'lwc';

export default class Welcometolwc extends LightningElement {


   firstName='Amit';
   handleTextOnChange(event) {

        var firstName ='Test';
        this.firstName = event.target.value;

   }

}