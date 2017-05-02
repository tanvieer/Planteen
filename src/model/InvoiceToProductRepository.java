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
			
			statement = connection.prepareStatement("INSERT INTO "+tableName+" (invoicePrimaryId, productId, units ,  profitMade , sellingPrice) Values(?,?,?,?,?)");
			// we can use statement or we can use general query.  example: statement
			    
	            statement.setString(1,entity.getInvoiceId());
	            statement.setInt(2,entity.getProductId());
	            statement.setInt(3,entity.getUnits());
	         
	            statement.setFloat(4, entity.getProfitMade());
	            statement.setFloat(5, entity.getSellingPrice());
			
	            System.out.println(statement);
	            int result = statement.executeUpdate();
			

			if (result != 0) {
				return true;
			}
			return false;
		} 
		catch (Exception e) {
			System.out.println("invoice to productRepository: add method");
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
			
			statement = connection.prepareStatement("UPDATE "+tableName+" SET units=? WHERE productId=? AND invoicePrimaryId=?");  
			// we can use statement or we can use general query.  example: statement
			statement.setInt(1,entity.getUnits());
            statement.setInt(2,entity.getProductId());
            statement.setString(3,entity.getInvoiceId());
            
            System.out.println(statement);
			int result = statement.executeUpdate();
			
			if (result != 0) {
				return true;
			}
			return false;

		} 
		catch (Exception e) {
			System.out.println("invoice to productRepository: edit method");
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
					
					String query = "DELETE FROM " + tableName + " WHERE invoicePrimaryId ="+invoiceId+" AND productId="+productId+""; // we can use statement or we can use general query.  example: query
					
					int result = dataAccess.executeQuery(query);

					if (result != 0) {
						return true;
					}
					return false;

				} catch (Exception e) {
					System.out.println("invoice to productRepository: delete method");
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
	
	public ArrayList<InvoiceToProduct> getInvoiceItems(String invoicePrimaryId) {
		ArrayList<InvoiceToProduct> invoiceToProducts = new ArrayList<InvoiceToProduct>();
		try {
			dataAccess = new MySqlDataAccess();		
			String query = "SELECT * FROM " + tableName + " WHERE invoicePrimaryId = '"+ invoicePrimaryId + "'";
			System.out.println(query);
			resultSet = dataAccess.getData(query);	
			while(resultSet.next()){	
			int productId = resultSet.getInt("productId");
			int units= resultSet.getInt("units");
			float profitMade= resultSet.getFloat("profitMade");
			float sellingPrice =  resultSet.getFloat("sellingPrice");
			
			
			InvoiceToProduct invoiceToProduct= new InvoiceToProduct(invoicePrimaryId, productId, units,profitMade,sellingPrice);
			invoiceToProducts.add(invoiceToProduct);
			}			
		}
		
		 catch (Exception e) {
			System.out.println("exception found at InvoiceToProductRepository.java while getById ");
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
		try { if (resultSet != null) resultSet.close(); } catch (Exception e) {System.out.println("Exception at InvoiceToProductRepository.java, "+tracker+" at finally block RESULTSET");};
	    try { if (statement != null) statement.close(); } catch (Exception e) {System.out.println("Exception at InvoiceToProductRepository.java, "+tracker+" at finally block STMT");};
	    try { if (connection != null) connection.close(); } catch (Exception e) {System.out.println("Exception at InvoiceToProductRepository.java, "+tracker+" at finally block CONNECTION");};
	}
	
}
