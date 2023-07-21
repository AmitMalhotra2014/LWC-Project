trigger MyMerTri on Merchandise__c(Before insert, After Insert, Before Update, After Update, Before Delete, After Delete, After Undelete) {
   mysetting__c ms = mysetting__c.getInstance('demosetting');
   System.debug(ms.isActive__c);
   if(ms.isActive__c == true) {
        if(Trigger.isDelete && Trigger.isAfter) {
           //I want to call my class
           MerchandiseTri.insertMerchandise(Trigger.old);
        }
    }
}