public with sharing class AccountController {
    public static void createAccounts(Integer numAccounts) {
        AccountService.createAccounts(numAccounts); 
    }
}
