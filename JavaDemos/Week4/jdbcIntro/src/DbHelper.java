import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

// we use this class for database connection
public class DbHelper {

    private String userName = "root";
    private String password = "369248Baris?";
    private String dbUrl = "jdbc:mysql://localhost:3306/world"; // to connect database "world"

    public Connection getConnection() throws SQLException {
        return DriverManager.getConnection(dbUrl, userName, password);
    }

    public void showErrorMessage(SQLException e) {
        System.out.println("\nError message: " + e.getMessage());
        System.out.println("\nError Code: " + e.getErrorCode());
    }
}
