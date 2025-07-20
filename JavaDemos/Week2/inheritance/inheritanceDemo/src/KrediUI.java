public class KrediUI {

    /* public void KrediHesapla(OgretmenKrediManager ogretmenKrediManager) {
        ogretmenKrediManager.Hesapla();
    } */
    // her tür kredi için üstteki gibi yapmak mantıklı olmaz çünkü sürekli kendimizi tekrar etmiş olacağız

    public void KrediHesapla(BaseKrediManager baseKrediManager) {
        baseKrediManager.Hesapla();
    }

    // BaseKrediManager hem Tarim'in hem de Ogretmenin annesi
    // Bundan dolayı biz KrediUI'da anneyi verip istediğimiz çocuğu çağırabiliriz
    // bunun sağlayan object'lerin referance tipte olmasıdır

}
