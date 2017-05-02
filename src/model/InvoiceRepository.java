package model;

import java.sql.Connection;
import java.sql.Date;
import java.util.ArrayList;

import DataAccessLayer.MySqlDataAccess;
import entity.Category;
import entity.Invoice;

public class InvoiceRepository implements Repository<Invoice>{

	private static final String tableName = "invoices";
	private java.sql.PreparedStatement statement;
	private MySqlDataAccess dataAccess;
	private Connection connection;
	private java.sql.ResultSet resultSet;
	
	public InvoiceRepository() {
		statement = null;
		dataAccess=null;
		connection=null;
		resultSet =null;
	}
	
	@Override
	public boolean add(Invoice entity) {
		try {
			dataAccess = new MySqlDataAccess();
			connection=dataAccess.getConnection();
			
			statement = connection.prepareStatement("INSERT INTO "+tableName+" (userId,placementDate,confirmDate,approvedBy,status, invoicePrimaryId) Values(?,?,?,?,?,?)");
			// we can use statement or we can use general query.  example: statement
			    
	            statement.setInt(1,entity.getUserId());
	            statement.setDate(2,entity.getPlacementDate());
	            statement.setDate(3,entity.getConfirmDate());
	            statement.setString(4, entity.getApprovedBy());
	            statement.setString(5, entity.getStatus());
	            statement.setString(6, entity.getInvoicePrimaryId());
	           
			System.out.println(statement);
			int result = statement.executeUpdate();
			

			if (result != 0) {
				return true;
			}
			return false;

		} 
		catch (Exception e) {
			System.out.println("InvoiceRepository: add method");
			e.printStackTrace();
			return false;
		}
		finally {
			closeConnection("add()");
		}
	}

	@Override
	public boolean edit(Invoice entity) {
		try {
			dataAccess = new MySqlDataAccess();
			connection=dataAccess.getConnection();
			
			statement = connection.prepareStatement("UPDATE "+tableName+" SET userId=?,placementDate=?,confirmDate=?,approvedBy=?,status=? WHERE inoviceId=?");  
			// we can use statement or we can use general query.  example: statement
				
			statement.setInt(1,entity.getUserId());
            statement.setDate(2,entity.getPlacementDate());
            statement.setDate(3,entity.getConfirmDate());
            statement.setString(4, entity.getApprovedBy());
            statement.setString(5, entity.getStatus());
            statement.setInt(6,entity.getInvoiceId());
            
            System.out.println(statement);
			int result = statement.executeUpdate();
			
			if (result != 0) {
				return true;
			}
			return false;

		} 
		catch (Exception e) {
			System.out.println("InvoiceRepository: edit method");
			e.printStackTrace();
			return false;
		}
		finally {
			closeConnection("edit()");
		}
	}

	@Override
	public boolean delete(int id) {
		try {
			dataAccess = new MySqlDataAccess();
			
			String query = "DELETE FROM " + tableName + " WHERE invoiceId ='"
					+ id + "'"; // we can use statement or we can use general query.  example: query

			int result = dataAccess.executeQuery(query);

			if (result != 0) {
				return true;
			}
			return false;

		} catch (Exception e) {
			System.out.println("InvoiceRepository: delete method");
			e.printStackTrace();
			return false;
		}
		finally {
			closeConnection("delete()");
		}
	}
	
	public boolean deleteByPrimaryId(String invoicePrimaryId) {
		try {
			dataAccess = new MySqlDataAccess();
			
			String query = "DELETE FROM " + tableName + " WHERE invoicePrimaryId ='"
					+ invoicePrimaryId + "'"; // we can use statement or we can use general query.  example: query

			System.out.println(query);
			int result = dataAccess.executeQuery(query);

			if (result != 0) {
				return true;
			}
			return false;

		} catch (Exception e) {
			System.out.println("exception found at InvoiceRepository.java while deleteByPrimaryId");
			e.printStackTrace();
			return false;
		}
		finally {
			closeConnection("delete()");
		}
	}

	@Override
	public Invoice getById(int id) {
		try {
			dataAccess = new MySqlDataAccess();
			
			String query = "SELECT * FROM " + tableName + " where invoiceId = '"
					+ id + "'";
		
			
			System.out.println(query);
			resultSet = dataAccess.getData(query);
		
			if(resultSet.next()){
				
			int invoiceId = resultSet.getInt("invoiceId");
			int userId = resultSet.getInt("userId");
			Date placementDate= resultSet.getDate("placementDate");
			Date confirmDate= resultSet.getDate("confirmDate");
			String approvedBy = resultSet.getString("approvedBy");
			String status = resultSet.getString("status");
			String invoicePrimaryId = resultSet.getString("invoicePrimaryId");
			String deliveryAddress = resultSet.getString("deliveryAddress");
			String deliveryPhoneNo = resultSet.getString("deliveryPhoneNo");
			
			Invoice invoice= new Invoice(invoiceId, userId, placementDate, confirmDate, approvedBy, status, invoicePrimaryId, deliveryAddress, deliveryPhoneNo);
				return invoice;
			}
			else 
				return null;
		}
		
		 catch (Exception e) {
			System.out.println("exception found at InvoiceRepository.java while getById");
			return null;
		 }
		finally {
			closeConnection("getById()");
		}
	}
	
	public Invoice getByPrimaryId(String invoicePrimaryId) {
		try {
			dataAccess = new MySqlDataAccess();
			
			String query = "SELECT * FROM " + tableName + " where invoicePrimaryId = '"
					+ invoicePrimaryId + "'";
		
			
			System.out.println(query);
			resultSet = dataAccess.getData(query);
		
			if(resultSet.next()){
				
			int invoiceId = resultSet.getInt("invoiceId");
			int userId = resultSet.getInt("userId");
			Date placementDate= resultSet.getDate("placementDate");
			Date confirmDate= resultSet.getDate("confirmDate");
			String approvedBy = resultSet.getString("approvedBy");
			String status = resultSet.getString("status");
			String deliveryAddress = resultSet.getString("deliveryAddress");
			String deliveryPhoneNo = resultSet.getString("deliveryPhoneNo");
			
			Invoice invoice= new Invoice(invoiceId, userId, placementDate, confirmDate, approvedBy, status, invoicePrimaryId, deliveryAddress, deliveryPhoneNo);
				return invoice;
			}
			else 
				return null;
		}
		
		 catch (Exception e) {
			System.out.println("exception found at InvoiceRepository.java while getByPrimaryId");
			return null;
		 }
		finally {
			closeConnection("getById()");
		}
	}

	@Override
	public Invoice getByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Invoice> getAll() {
		ArrayList<Invoice> invoices = new ArrayList<Invoice>();
		try {

			String query = "SELECT * FROM " + tableName;

			dataAccess = new MySqlDataAccess();
			System.out.println(query);
			resultSet = dataAccess.getData(query);

			while (resultSet.next()) {

				int invoiceId = resultSet.getInt("invoiceId");
				int userId = resultSet.getInt("userId");
				Date placementDate= resultSet.getDate("placementDate");
				Date confirmDate= resultSet.getDate("confirmDate");
				String approvedBy = resultSet.getString("approvedBy");
				String status = resultSet.getString("status");
				String invoicePrimaryId = resultSet.getString("invoicePrimaryId");
				String deliveryAddress = resultSet.getString("deliveryAddress");
				String deliveryPhoneNo = resultSet.getString("deliveryPhoneNo");
			
				
				Invoice invoice= new Invoice(invoiceId, userId, placementDate, confirmDate, approvedBy, status, invoicePrimaryId, deliveryAddress, deliveryPhoneNo);
				invoices.add(invoice);
			}
		} catch (Exception e) {
			System.out.println("exception found at InvoiceRepository.java while get all");
			return null;
		}
		finally {
			closeConnection("getAll()");
		}
		return invoices;
	}
	
	private void closeConnection(String tracker){
		try { if (resultSet != null) resultSet.close(); } catch (Exception e) {System.out.println("Exception at InvoiceRepository.java, "+tracker+" at finally block RESULTSET");};
	    try { if (statement != null) statement.close(); } catch (Exception e) {System.out.println("Exception at InvoiceRepository.java, "+tracker+" at finally block STMT");};
	    try { if (connection != null) connection.close(); } catch (Exception e) {System.out.println("Exception at InvoiceRepository.java, "+tracker+" at finally block CONNECTION");};
	}

}
