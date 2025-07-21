public class Main {
    public static void main(String[] args) {

        // ICustomerDal cutomerDal = new OracleCustomerDal();

        CustomerManager customerManager = new CustomerManager(new OracleCustomerDal());
        customerManager.add();

    }
}