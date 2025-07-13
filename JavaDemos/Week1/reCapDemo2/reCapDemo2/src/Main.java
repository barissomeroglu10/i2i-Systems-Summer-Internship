public class Main {
    public static void main(String[] args) {

        double[] myArray = new double[4];
        myArray[0] = 1.2;
        myArray[1] = 1.3;
        myArray[2] = 1.4;
        myArray[3] = 1.5;

        System.out.println("------Elemanlanların Yazdırılması-----");
        for (double number : myArray) {
            System.out.println(number);
        }

        System.out.println("-------Elemanlanların Toplamının Yazdırılması-------");
        double sum = 0;
        for (double number : myArray) {
            sum += number;
        }
        System.out.println("Toplam = " + sum);

        System.out.println("-------En Büyük Elemanın Yazdırılması-------");
        double maxNumber = 0;
        for (double number : myArray) {
            if (number > maxNumber) {
                maxNumber = number;
            }
        }

        System.out.println("Max number = " + maxNumber);

    }
}