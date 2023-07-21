import { LightningElement } from 'lwc';

export default class Parentact extends LightningElement {
    searchDetails = [];
    handleaccountdata(event) {
        this.searchDetails = [];
        alert('WOW.. yes I called..');
        alert(event.detail);
        try{
            event.detail.forEach(x => {
          var accDate = {
                id:x.Id,
                name:x.Name
           }
              this.searchDetails.push(accDate);  
            });
        }catch(e) {
            console.log(e);
        }
    }
}