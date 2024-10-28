public with sharing class AccountData {
    public static void insertAccounts(List<Account> accounts) {
        if (Schema.sObjectType.Account.isCreateable()) {
            insert accounts;
        } else {
            System.debug('El usuario no tiene permisos para crear cuentas.');
        }
    }
}
