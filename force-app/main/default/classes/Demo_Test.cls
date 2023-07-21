@isTest
private class Demo_Test {
    @testSetup static void doSetup1() {
        Account act = new Account();
        act.name = 'TestAccount'; 
        insert act;   
    }
    public static testMethod void doTest() {
      Demo d = new Demo();
      d.sayHello();
      d.sayBye();
          
     integer r =  d.doAddition(10,10);
     System.assertequals(20,r);
     
     
      Account a = [select id, name from account where name = 'TestAccount'];
    Test.startTest();  
      d.getAccount(a);
    Test.stopTest(); 
    }
}