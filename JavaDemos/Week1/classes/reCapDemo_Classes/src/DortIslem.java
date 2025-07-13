public class DortIslem {

    // toplama
    public double Topla(double sayi1, double sayi2) {
        return sayi1 + sayi2;
    }

    // çıkarma
    public double Cikar(double sayi1, double sayi2) {
        return sayi1 - sayi2;
    }

    // çarpma
    public double Carp(double sayi1, double sayi2) {
        return sayi1 * sayi2;
    }

    // bölme
    public double Bol(double sayi1, double sayi2) {
        if (sayi2 == 0) {
            return -1;
        }

        else {
            return sayi1 / sayi2;
        }
    }
}
