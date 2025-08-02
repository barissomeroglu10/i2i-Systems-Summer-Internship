import java.io.*;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        // createFile();
        // getFileInfo();
        // readFile();
        readFile();
        writeFile();
        readFile();
    }

    // create file section
    public static void createFile() {
        File file = new File("/Users/barissomeroglu/Documents/i2i-Systems-Summer-Internship/JavaDemos/Week3/workingWithFiles/files/students.txt");

        try {
            if (file.createNewFile()) {
                System.out.println("File created: " + file.getAbsolutePath());
            }
            else  {
                System.out.println("File already exists: " + file.getAbsolutePath());
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    // getting info about file section
    public static void getFileInfo() {
        File file = new File("/Users/barissomeroglu/Documents/i2i-Systems-Summer-Internship/JavaDemos/Week3/workingWithFiles/files/students.txt");

        if (file.exists()) {
            System.out.println("File name: " + file.getName());
            System.out.println("File path: " + file.getAbsolutePath());
            System.out.println("Is File Writeable: " + file.canWrite());
            System.out.println("Is File Readable: " + file.canRead());
            System.out.println("File's Size(byte): " + file.length());
        }
    }

    // read file section
    public static void readFile() {
        File file = new File("/Users/barissomeroglu/Documents/i2i-Systems-Summer-Internship/JavaDemos/Week3/workingWithFiles/files/students.txt");

        try {
            Scanner reader = new Scanner(file);
            while (reader.hasNextLine()) {
                String line = reader.nextLine();
                System.out.println(line);
            }
            reader.close();
        } catch (FileNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    // write file section
    public static void writeFile() {
        try {
            // ,true will make it add available type
            BufferedWriter writer = new BufferedWriter(new FileWriter("/Users/barissomeroglu/Documents/i2i-Systems-Summer-Internship/JavaDemos/Week3/workingWithFiles/files/students.txt", true));
            writer.newLine(); // to write a new line
            writer.write(" Ben Java Öğreniyorum.");
            System.out.println("Wrote to the file");
            writer.close();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}