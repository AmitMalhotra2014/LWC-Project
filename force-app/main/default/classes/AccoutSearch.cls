public class AccoutSearch {
    @auraEnabled(cacheable=true)
    public static list<Account> searchAccount(String accountName) {
        accountName = '%' + accountName + '%';
        List<Account> accounts = [select id, name from account where name like : accountName];
        return accounts;
    }
}