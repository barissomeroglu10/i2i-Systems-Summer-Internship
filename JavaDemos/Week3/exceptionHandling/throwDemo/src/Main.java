public class Main {
    public static void main(String[] args) {

        AccountManager accountManager = new AccountManager();
        System.out.println("Your balance is $" + accountManager.getBalance());

        accountManager.Deposit(100);
        System.out.println("\nYour balance is $" + accountManager.getBalance());

        try {
            accountManager.Withdraw(90);
        } catch (BalanceInsufficentException e) {
            System.out.println(e.getMessage());
        }

        System.out.println("\nYour balance is $" + accountManager.getBalance());

        try {
            accountManager.Withdraw(20);
        } catch (BalanceInsufficentException e) {
            System.out.println(e.getMessage());
        }

        System.out.println("\nYour balance is $" + accountManager.getBalance());
    }
}