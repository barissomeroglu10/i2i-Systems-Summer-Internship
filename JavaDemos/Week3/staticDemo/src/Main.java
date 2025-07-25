public class Main {
    public static void main(String[] args) {

        ProductManager manager = new ProductManager();
        Product product = new Product();

        product.name = "Mouse";
        product.price = 10;

        manager.add(product);

        // inner class
        // but using inner class is not suggestion because it's not convenient with SOLID
        DatabaseHelper.Crud.Update();
    }
}