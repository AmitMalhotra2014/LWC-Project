import { LightningElement } from 'lwc';
import getAccountData from '@salesforce/apex/AccoutSearch.searchAccount';

export default class Searchaccount extends LightningElement {
    accountName;
    accountPhone;
    billingStreet;
    billingCity;
    billingState;
    billingZipcode;
    handleonchange(event) {
        if(event.target.name === 'accountName'){
            this.accountName = event.target.value;
        } 
        else if(event.target.name === 'accountPhone') {
            
            this.accountPhone = event.target.value;
        }
    }
    handleonchangestreet(event){
       
        this.billingStreet = event.target.value;
    }
    handleonchangecity(event) {
       
        this.billingCity = event.target.value;
    }
    handleonchangestate(event) {
        
        this.billingState = event.target. value;
    }
    handleonchangezipcode(event) {
        
        this.billingZipcode = event.target. value;
    }

    handleaccountsearch(event) {
         alert('Yes, I called..');
         getAccountData({accountName:this.accountName}).
         then(results=>{this.dispatchEvent(new CustomEvent('getactdt',{detail:results}))}).
         catch(error=>{console.log(error);
        });
 
    }


}