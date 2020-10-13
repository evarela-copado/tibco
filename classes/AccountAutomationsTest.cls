@IsTest
private class AccountAutomationsTest {

    @isTest static void testDefaultDescription(){
        Account acc = new Account(Name = 'My Test Account');
        insert acc;
        acc = AccountAutomations.setDefaultDescription(acc);
        System.assertEquals('Default description', acc.Description, 'When description is null, it is updated to Default description');

        acc.Description = 'New Description Manual';
        
        acc = AccountAutomations.setDefaultDescription(acc);
        System.assertNotEquals('Default description', acc.Description, 'When description is NOT null, it is NOT updated to Default description');
    }
}