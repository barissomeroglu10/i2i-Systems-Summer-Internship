public class Main {
    public static void main(String[] args) {
        DortIslem dortIslem = new DortIslem();

        // method overloading
        System.out.println(dortIslem.topla(3,5));
        System.out.println(dortIslem.topla(3, 5.5));
        System.out.println(dortIslem.topla(3,5,4));
    }
}