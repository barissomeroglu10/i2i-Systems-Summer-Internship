public class Main {
    public static void main(String[] args) {
        Product product = new Product();
        product.setName("Laptop");
        product.setPrice(36980);
        product.setDescription("Asus ROG Strix 16G");
        product.setId(1);
        product.setStockAmount(3);
        System.out.println(product.getName());

        ProductManager productManager = new ProductManager();
        productManager.Add(product);

        System.out.println(product.getKod());
    }
}