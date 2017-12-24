
package bean;
import java.sql.*;

public class loginuser {
 
  public static String validate(loginbean bean){  
   String status=" ";  
       
   try{  
  
   Connection con=Connection_Provider.getCon();   
         
   PreparedStatement ps=con.prepareStatement("select user_type from HR.VALIDUSER  where name=? and password=?");  
  
   ps.setString(1,bean.getUsername());  
   ps.setString(2, bean.getPass());  
              
   ResultSet rs=ps.executeQuery();  
  
   while(rs.next())
     status=rs.getString(1); 
   
   }
   catch(Exception e){}
    
 return status;  
  
}
  

}
