package model;

import java.sql.Connection;
import java.util.ArrayList;

import DataAccessLayer.MySqlDataAccess;
import entity.InvoiceToProduct;

public class InvoiceToProductRepository implements Repository<InvoiceToProduct> {

	private static final String tableName = "invoice_to_product";
	private java.sql.PreparedStatement statement;
	private MySqlDataAccess dataAccess;
	private Connection connection;
	private java.sql.ResultSet resultSet;
	
	public InvoiceToProductRepository() {
		statement = null;
		dataAccess=null;
		connection=null;
		resultSet =null;
	}
	
	@Override
	public boolean add(InvoiceToProduct entity) {
		try {
			dataAccess = new MySqlDataAccess();
			connection=dataAccess.getConnection();
			
			statement = connection.prepareStatement("INSERT INTO "+tableName+" (invoiceId, productId, units, availableStockId, buyingPrice, sellingPrice, profitMade) Values(?,?,?,?,?,?,?)");
			// we can use statement or we can use general query.  example: statement
			    
	            statement.setInt(1,entity.getInvoiceId());
	            statement.setInt(2,entity.getProductId());
	            statement.setInt(3,entity.getUnits());
	            statement.setInt(4, entity.getAvailableStockId());
	            statement.setFloat(5, entity.getBuyingPrice());
	            statement.setFloat(6, entity.getSellingPrice());
	            statement.setFloat(7, entity.getProfitMade());
			
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
	public boolean edit(InvoiceToProduct entity) {
		try {
			dataAccess = new MySqlDataAccess();
			connection=dataAccess.getConnection();
			
			statement = connection.prepareStatement("UPDATE "+tableName+" SET units=? WHERE productId=? AND invoiceId=?");  
			// we can use statement or we can use general query.  example: statement
			statement.setInt(1,entity.getUnits());
            statement.setInt(2,entity.getProductId());
            statement.setInt(3,entity.getInvoiceId());
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
			closeConnection("edit()");
		}

	}

	@Override
	public boolean delete(int id) {
	// DELETE FROM invoice-to-product WHERE productId=1 AND invoiceId=1;
		return false;
	}

	public boolean delete(int invoiceId,int productId) {
		// DELETE FROM invoice-to-product WHERE productId=1 AND invoiceId=1;
				try {
					dataAccess = new MySqlDataAccess();
					
					String query = "DELETE FROM " + tableName + " WHERE invoiceId ="+invoiceId+" AND productId="+productId+""; // we can use statement or we can use general query.  example: query
					
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
	public InvoiceToProduct getById(int id) {
		
		return null;
	}
	
	public ArrayList<InvoiceToProduct> getInvoiceItems(int id) {
		ArrayList<InvoiceToProduct> invoiceToProducts = new ArrayList<InvoiceToProduct>();
		try {
			dataAccess = new MySqlDataAccess();		
			String query = "SELECT * FROM " + tableName + " where invoiceId = '"+ id + "'";
			resultSet = dataAccess.getData(query);	
			while(resultSet.next()){	
			int invoiceId = resultSet.getInt("invoiceId");
			int productId = resultSet.getInt("productId");
			int units= resultSet.getInt("units");
			int availableStockId= resultSet.getInt("availableStockId");
			float buyingPrice= resultSet.getFloat("buyingPrice");
			float sellingPrice= resultSet.getFloat("sellingPrice");
			float profitMade= resultSet.getFloat("profitMade");
			
			
			InvoiceToProduct invoiceToProduct= new InvoiceToProduct(invoiceId, productId, units, availableStockId, buyingPrice, sellingPrice, profitMade);
			invoiceToProducts.add(invoiceToProduct);
			}			
		}
		
		 catch (Exception e) {
			System.out.println("exception found at UserRepository.java while getById");
			return null;
		 }
		finally {
			closeConnection("getInvoiceItems()");
		}
		return invoiceToProducts;
	}
	
	@Override
	public InvoiceToProduct getByName(String name) {
		
		return null;
	}

	@Override
	public ArrayList<InvoiceToProduct> getAll() {
		// TODO Auto-generated method stub
		return null;
	}
	
	private void closeConnection(String tracker){
		try { if (resultSet != null) resultSet.close(); } catch (Exception e) {System.out.println("Exception at UserRepository.java, "+tracker+" at finally block RESULTSET");};
	    try { if (statement != null) statement.close(); } catch (Exception e) {System.out.println("Exception at UserRepository.java, "+tracker+" at finally block STMT");};
	    try { if (connection != null) connection.close(); } catch (Exception e) {System.out.println("Exception at UserRepository.java, "+tracker+" at finally block CONNECTION");};
	}
	
}
