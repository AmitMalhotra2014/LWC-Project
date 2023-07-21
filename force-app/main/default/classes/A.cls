public class A {
    
	@future
    public static void getA() {
        System.debug('From A..');
        System.enqueueJob(new B());
    }

}