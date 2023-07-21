public class ExceptionDemo {
   public void getCalculate(integer a, integer b) {
        try {              
        	integer res = a/b;  
        	System.debug('Result = ' + res);
            Demo d;
            System.debug('d = ' + d);
            d.sayHello();
        }catch(MathException me) {
            System.debug('Please do not divide by Zero..'  +  me);
        }
        catch(NullPointerException ne) {
            System.debug('Please do not call a method with null');
        }
         catch(Exception exp) {
            System.debug('Server is down, pleaes wait for a while..');
        }
       finally {
           System.debug('I will call either of any case ');
       }
    }
}