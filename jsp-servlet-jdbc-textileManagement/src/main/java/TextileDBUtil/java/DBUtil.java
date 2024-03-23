package TextileDBUtil.java;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil 
{
	 public static Connection createConnection() {
	        try {

	            Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/21l238?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "Rocks2887@");
	            return con;
	        } catch (Exception e) {
	            System.out.println(e);
	        }
	        return null;
	    }

}
