public class MySqlCutomerDal implements ICustomerDal, IRepository {
    // a class can implement multiple interface
    // a class can extends one class and implement multiple interface together
    // Dal = data access layer

    @Override
    public void Add() {
        System.out.println("MySQL added");
    }
}
