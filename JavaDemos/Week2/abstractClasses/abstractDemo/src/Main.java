public class Main {
    public static void main(String[] args) {

        CustomerManager customerManager = new CustomerManager();
        // customerManager.databaseManager = new OracleDatabaseManager();
        // changing configuration
        customerManager.databaseManager = new SqlServerDatabaseManager();
        customerManager.getCustomer();
    }
}