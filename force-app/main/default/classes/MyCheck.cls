public class MyCheck {
    
    static {
        System.debug('From Static block');
    }
    public MyCheck() {
        System.debug('From Constructor..');
    }

    {
      System.debug('From block');  
    }
   
    public void fun(){}
    
    
}