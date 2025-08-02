public class AccountManager {
    private double balance;

    public void Deposit(double amount){
        balance = getBalance() + amount;
    }

    public void Withdraw(double amount) throws BalanceInsufficentException {
        if(balance >= amount){
            balance = getBalance() - amount;
        }
        else{
            // using our own exception
            throw new BalanceInsufficentException("Balance isn't enough");
        }
    }

    public double getBalance() {
        return balance;
    }
}
