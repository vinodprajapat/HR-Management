
package bean;
import java.sql.*;

public class Connection_Provider {
 
private static Connection con=null;  
static{  
   try{  
      Class.forName("oracle.jdbc.driver.OracleDriver");  
       con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
       }
   catch(Exception e){  
   }  
 }  
  
public static Connection getCon(){  
    return con;  
}  
  
} 

