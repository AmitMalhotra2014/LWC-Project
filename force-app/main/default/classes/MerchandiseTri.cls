public class MerchandiseTri {
    public static void insertMerchandise(List<Merchandise__c> mer) {
        Merchandise_Arch__c ma;
        for(Merchandise__c m :mer) {
 	    	 ma   = new Merchandise_Arch__c();
    	     ma.name = m.name;
        	 insert ma;
        	}
        }
}