public class Demo {
   
    public static void sayHello() {
        System.debug('Hello Apex');
       
    }
    @testVisible
    private void sayBye() {
        System.debug('Bye Apex');
       
        
    }
    public integer doAddition(integer a, integer b) {
        integer res = a+b;
        System.debug(res);
        return res;
       }
    
    public void getAccount(Account act) {
        // Here, I do want to get Account
    }
}