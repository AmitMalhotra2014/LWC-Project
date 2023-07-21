public class Boiling {
    
    public void doBoiling(Integer i) {
        try{ 
			
            System.debug('Boiling');
        if(i==100) {
           throw new BoilerException('Pleasesssssssssssssssssss'); 
            
        }        
        }catch(BoilerException be) {
            i=0;
            be.setMessage('hahahahhahahahahhahahahahahahah');
			System.debug(be.getMessage() + '' + be.getTypeName() + '' + be.getStackTraceString());
        }
            
    }

}