public with sharing class AccountService {
    public static void createAccounts(Integer numAccounts) {
        List<Account> accountList = new List<Account>();

        for (Integer i = 1; i <= numAccounts; i++) {
            Account acc = new Account(Name = 'Cuenta ' + i);
            accountList.add(acc);
        }

        // Llama a la capa de datos para insertar las cuentas
        AccountData.insertAccounts(accountList);
    }
}
