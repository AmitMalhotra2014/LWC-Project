public class SOSLDemo {
	public void getSearch() {
   		List<List<sObject>> searchResult =  [find 'jim' in all fields returning lead(name),contact(id,name)];
        List<lead> ld = searchResult[0];
        List<Contact> cont = searchResult[1];
        if(ld.size() > 0) {
            for(Lead l :ld) {
                System.debug('Lead Name =' + l.name );
            }
        }
        if(cont.size() > 0) {
            for(Contact c :cont) {
                System.debug('Contact Name =' + c.name );
            }
        }
    }
}