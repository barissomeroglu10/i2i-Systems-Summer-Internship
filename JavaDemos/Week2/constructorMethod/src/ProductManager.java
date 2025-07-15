public class ProductManager {
    public void Add(Product product) { // sending product object as a parametre
        //JDBC
        System.out.println("Product Added " + product.getName());
    }
}
