trigger LeadTri on Lead (before delete, after delete) {


if(Trigger.isDelete && Trigger.isAfter) {

    List<Lead> ld = Trigger.old;
    Merchandise_Arch__c ma = new Merchandise_Arch__c();
    ma.name = ld[0].Firstname +  ' ' +ld[0].Lastname ;
    insert ma;

}

}