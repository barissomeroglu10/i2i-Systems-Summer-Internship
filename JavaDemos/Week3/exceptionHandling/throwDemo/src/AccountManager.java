public class AccountManager {
    private double balance;

    public void Deposit(double amount){
        balance = getBalance() + amount;
    }

    public void Withdraw(double amount) throws Exception {
        if(balance >= amount){
            balance = getBalance() - amount;
        }
        else{
            throw new Exception("Balance isn't enaugh");
        }
    }

    public double getBalance() {
        return balance;
    }
}
