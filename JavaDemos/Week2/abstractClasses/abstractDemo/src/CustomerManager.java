public class CustomerManager {

    // according to database type, databaseManager will get this type
    BaseDatabaseManager databaseManager;

    public void getCustomer() {
        databaseManager.getData();
    }
}
