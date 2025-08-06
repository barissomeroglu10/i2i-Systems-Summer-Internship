import java.sql.*;
import java.util.ArrayList;

public class Main {
    public static void main(String[] args) throws SQLException {
        // connection class will allow to connect the database
        Connection connection = null;
        DbHelper dbHelper = new DbHelper(); // to connect the database

        Statement statement = null; // we'll use this for sql statement
        ResultSet resultSet; // we'll use this one to keep the results

        try {
            connection = dbHelper.getConnection();
            // System.out.println("\nConnected to database successfully");

            statement = connection.createStatement(); // to get statement to the connection

            resultSet = statement.executeQuery("select * from country"); // execute the query

            // with this array list, we put the result into the array list
            ArrayList<Country> countries = new ArrayList<Country>();

            while (resultSet.next()) { // this one checks resultSet one by one
                // System.out.println(resultSet.getString("Name")); // we give column name at here
                countries.add(new Country(
                        resultSet.getString("Code"),
                        resultSet.getString("Name"),
                        resultSet.getString("Continent"),
                        resultSet.getString("Region")));
            }
            System.out.println(countries.size());
        }
        catch (SQLException e) {
            dbHelper.showErrorMessage(e);
        }
        finally {
            connection.close();
        }
    }
}