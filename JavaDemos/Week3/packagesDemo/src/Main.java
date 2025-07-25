// built-in : something in Java
// scanner ile kullanıcıdan bilgi alırız
import matematic.DortIslem;
import matematic.Logaritma;
// import matematic.* --> bu paketteki her şeyi import et
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        // learning built-in packages
        Scanner input = new Scanner(System.in);
        System.out.println("Enter a Number");
        int number = input.nextInt();
        System.out.println("Number is " + number);

        // burası yazıldığı gibi matematic paketi Main üstüne import edilir
        DortIslem dortIslem = new DortIslem();
        dortIslem.topla(3,6);

        Logaritma logaritma = new Logaritma();
    }
}