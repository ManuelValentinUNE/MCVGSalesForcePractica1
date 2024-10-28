@isTest
public with sharing class AccountServiceTest {
    @isTest
    static void testCreateAccounts() {
        Test.startTest();
        AccountController.createAccounts(100);
        Test.stopTest();

        List<Account> accounts = [SELECT Id, Name FROM Account WHERE Name LIKE 'Cuenta %'];
        System.assertEquals(100, accounts.size(), 'Se esperaban 100 cuentas creadas');
  
        
        // Opcional: Verifica que los nombres de las cuentas sean correctos
        for (Integer i = 1; i <= 100; i++) {
            String expectedName = 'Cuenta ' + i;
            Boolean found = false;
            for (Account acc : accounts) {
                if (acc.Name == expectedName) {
                    found = true;
                    break;
                }
            }
            System.assertEquals(true, found, 'No se encontró la cuenta con el nombre esperado: ' + expectedName);
        }
    }
}
