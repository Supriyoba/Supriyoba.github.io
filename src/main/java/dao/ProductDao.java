package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.Cart;
import bean.Product;

public class ProductDao { 
	
	public Cart OrderP(int num, int pid) {
		Cart cart = new Cart();
		
		try {
			Class.forName("org.sqlite.JDBC");
			
			Connection c = DriverManager.getConnection("jdbc:sqlite:hello.db");
			String sqlselect="select * from product where id=?";
		    PreparedStatement ps = c.prepareStatement(sqlselect);
			ps.setInt(1, pid);
			
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				Product product= new Product();
				
				product.setId(pid);
				product.setName(rs.getString(2));
				product.setPrice(rs.getInt(3));
				
				
				cart.setNum(num);
				cart.setProduct(product);
			
				
			}
			
			rs.close();
			ps.close();
			c.close();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cart;
		
		
	}
	public List<Product> ListProduct(){
	ArrayList<Product> products = new ArrayList<Product>();
		
	try {
		Class.forName("org.sqlite.JDBC");
		Connection c = DriverManager.getConnection("jdbc:sqlite:hello.db");
		 Statement s = c.createStatement();
		 String sqlcreate="create table product(id int primary key,name varchar(50),price int)";
		 String sqlinsert="insert into product values(1,'book',500)";
		 
//	     String sqlinsert1="insert into product values(2,'pen',50)"; 
//	     String sqlinsert11="insert into product values(3,'pensil',10)";
//	     String sqlinsert12="insert into product values(4,'Calculator',50)"; 
		                 
		 
		 
//	     s.execute(sqlcreate);
//		 s.execute(sqlinsert);
//	  	 s.execute(sqlinsert1);
//	     s.execute(sqlinsert11);
//	     s.execute(sqlinsert12);
	     
	  String sqlselect= "select* from product";
	  PreparedStatement ps = c.prepareStatement(sqlselect);
		 
		 
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()) {
			Product product = new Product();
			
			product.setId(rs.getInt(1));
			product.setName(rs.getString(2));
			product.setPrice(rs.getInt(3));
			products.add(product);
		}
			
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return products;
	
		 
	}

}
