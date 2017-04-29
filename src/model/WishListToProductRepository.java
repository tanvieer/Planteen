package model;

import java.sql.Connection;
import java.util.ArrayList;

import DataAccessLayer.MySqlDataAccess;
import entity.InvoiceToProduct;
import entity.WishListToProduct;

public class WishListToProductRepository  implements Repository<WishListToProduct>{

	private static final String tableName = "wishlist_to_product";
	private java.sql.PreparedStatement statement;
	private MySqlDataAccess dataAccess;
	private Connection connection;
	private java.sql.ResultSet resultSet;
	
	public WishListToProductRepository() {
		statement = null;
		dataAccess=null;
		connection=null;
		resultSet =null;
	}
	
	@Override
	public boolean add(WishListToProduct entity) {
		try {
			dataAccess = new MySqlDataAccess();
			connection=dataAccess.getConnection();
			
			statement = connection.prepareStatement("INSERT INTO "+tableName+" (wishListId, productId) Values(?,?)");
			
            statement.setInt(1,entity.getWishListId());
            statement.setInt(2,entity.getProductId());
	   
			int result = statement.executeUpdate();
			if (result != 0) {
				return true;
			}
			return false;
		} 
		catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		finally {
			closeConnection("add()");
		}
	}

	@Override
	public boolean edit(WishListToProduct entity) {
		System.out.println("no need to use edit use delete and add");
		return false;

	}

	@Override
	public boolean delete(int id) {
		System.out.println("use the other delete method");
		return false;
	}
	
	public boolean deleteProductFromWishList(int wishListId,int productId) {
				try {
					dataAccess = new MySqlDataAccess();
					
					String query = "DELETE FROM " + tableName + " WHERE wishListId ="+wishListId+" AND productId="+productId+""; // we can use statement or we can use general query.  example: query
					
					int result = dataAccess.executeQuery(query);

					if (result != 0) {
						return true;
					}
					return false;

				} catch (Exception e) {
					e.printStackTrace();
					return false;
				}
				finally {
					closeConnection("delete()");
				}
		}


	@Override
	public WishListToProduct getById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public WishListToProduct getByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<WishListToProduct> getAll() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	public ArrayList<WishListToProduct> getWishListItems(int id) {
		ArrayList<WishListToProduct> wishListToProducts = new ArrayList<WishListToProduct>();
		try {
			dataAccess = new MySqlDataAccess();		
			String query = "SELECT * FROM " + tableName + " where wishListId = '"+ id + "'";
			resultSet = dataAccess.getData(query);	
			while(resultSet.next()){	
			int wishListId = resultSet.getInt("wishListId");
			int productId = resultSet.getInt("productId");
			
			WishListToProduct wishListToProduct= new WishListToProduct(wishListId, productId);
			wishListToProducts.add(wishListToProduct);
	
			}			
		}
		
		 catch (Exception e) {
			System.out.println("exception found at UserRepository.java while getById");
			return null;
		 }
		finally {
			closeConnection("getInvoiceItems()");
		}
		return wishListToProducts;
	}
	private void closeConnection(String tracker){
		try { if (resultSet != null) resultSet.close(); } catch (Exception e) {System.out.println("Exception at UserRepository.java, "+tracker+" at finally block RESULTSET");};
	    try { if (statement != null) statement.close(); } catch (Exception e) {System.out.println("Exception at UserRepository.java, "+tracker+" at finally block STMT");};
	    try { if (connection != null) connection.close(); } catch (Exception e) {System.out.println("Exception at UserRepository.java, "+tracker+" at finally block CONNECTION");};
	}

}
