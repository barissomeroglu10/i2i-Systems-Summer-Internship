public class OgrenciKrediManager extends BaseKrediManager {
    // overriding
    public  double hesapla(double tutar) {
        return tutar * 1.10;
    }
}
