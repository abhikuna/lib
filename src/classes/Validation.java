package classes;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

public class Validation {

	private JdbcTemplate jdbcTemplate;
			UserValidation user;
	public List<Users> getAllEmployees(){  
		 return jdbcTemplate.query("select * from employee",new ResultSetExtractor<List<Users>>(){  
		    @Override  
		     public List<Users> extractData(ResultSet rs) throws SQLException,  
		            DataAccessException {  
		      
		        List<Users> list=new ArrayList<Users>();  
		        while(rs.next()){  
		        Users e=new Users();  
		        e.setUsername(rs.getString(1));
		        e.setPassword(rs.getString(2));
		          list.add(e);
		          if(e.getUsername()==user.getvusename() && e.getPassword()==user.getVpassword()) {
		        	  System.out.println("sucessfull");
		          }
		          
		        }  
		        return list;  
		        }
		 }
		 );
}
}
