import { LightningElement, api } from 'lwc';

const columns = [
  
    { label: 'Account Name', fieldName: 'name', },
   
];

export default class Searchedactresult extends LightningElement {
    columns = columns;
    @api searchresult = [];
}