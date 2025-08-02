import java.io.*;
import java.nio.Buffer;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader reader = null;
        int total = 0;
        try {
           reader = new BufferedReader(new FileReader("/Users/barissomeroglu/Documents/i2i-Systems-Summer-Internship/JavaDemos/Week3/exceptionHandling/readingFileDemo/src/numbers.txt"));
           String line = null;
           while ((line = reader.readLine()) != null) {
               total += Integer.valueOf(line);
           }
            System.out.println("Total number of digits: " + total);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } finally {
            reader.close(); // if couldn't find a file it will throw IOException
        }
    }
}