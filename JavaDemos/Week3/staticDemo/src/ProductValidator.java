public class ProductValidator {

    // to use "ProductValidator.isValid(product)", we should make this method static
    // as static class, we can make an object from ProductValidator class
    // but the difference is this: we can only make one object
    public static boolean isValid(Product product) {
        if (product.price > 0 && !product.name.isEmpty()) {
            return true;
        }

        else {
            return false;
        }
    }
}
