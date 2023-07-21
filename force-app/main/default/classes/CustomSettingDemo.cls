public class CustomSettingDemo {
    
    
    public void getCustomSettingData() {
        
        mysetting__c ms = mysetting__c.getInstance('demosetting');
        System.debug(ms.isActive__c);
        
        mymetadata__mdt md = mymetadata__mdt.getInstance('mydata');
        System.debug(md.isActive__c );
    }

}