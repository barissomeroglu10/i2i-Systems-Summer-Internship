public class Product {
    // attributes veya field
    // tüm bu attribute'ler public'tir ve her yerden erişilebilirdir
    // ama encapsulation gereği bunlar private yapılmalıdır
//    int id;
//    String name;
//    String description;
//    double price;
//    int stockAmount;

    // private sadece tanımlandığı sınıfta geçerli
    private boolean onSale;

    // field'ları _ ile tanımlarız ki parametreler ile karışmasın
    private int id;
    private String name;
    private String description;
    private double price;
    private int stockAmount;
    private String kod;

    public int getId() {
        return id;
    }

    // set edilecek değer parametre olarak verilmeli
    public void setId(int id) {
        this.id = id; // this içerisinde bulunduğum class demek
        // yani buradaki this.id product'ın id'sidir
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getStockAmount() {
        return stockAmount;
    }

    public void setStockAmount(int stockAmount) {
        this.stockAmount = stockAmount;
    }

    public String getKod() {
        return this.name.substring(0,1) + id;
    }
}
