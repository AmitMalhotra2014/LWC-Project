@restResource(urlMapping='/myAccount/*')
global class AccountExpose {
    @httpGet
    global static List<Account> getAccount() {
        List<Account> act = [select id, name from Account];
        return act;
    }
    @httpPost
    global static void insertAccount(String nm) {
        Account acc = new Account();
        acc.name = nm;
        insert acc;
    }
    @httpDelete
    global static void getDelete() {
     RestRequest req = RestContext.request;
     //String recordId = req.params.get('id'); 
     String recordId  = req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);
     Account act = [select id, name from account where id =:recordId]; 
     delete act;   
    }
    
 }