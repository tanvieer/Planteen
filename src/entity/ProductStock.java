package entity;

import java.sql.Date;

public class ProductStock {
	private int productStockId;
	private int productId;
	private Date buyingDate;
	private float buyingPrice;
	private int boughtUnits;
	private String addedBy;
	private String adminNote;
	private String status;
	
	public ProductStock( int productId, Date buyingDate, float buyingPrice, int boughtUnits, String addedBy, String adminNote, String status) {

		
		this.productId = productId;
		this.buyingDate = buyingDate;
		this.buyingPrice = buyingPrice;
		this.boughtUnits = boughtUnits;
		this.addedBy = addedBy;
		this.adminNote = adminNote;
		this.status = status;
	}
	
	public ProductStock(int productStockId, int productId, Date buyingDate, float buyingPrice, int boughtUnits, String addedBy, String adminNote, String status) {

		this.productStockId = productStockId;
		this.productId = productId;
		this.buyingDate = buyingDate;
		this.buyingPrice = buyingPrice;
		this.boughtUnits = boughtUnits;
		this.addedBy = addedBy;
		this.adminNote = adminNote;
		this.status = status;
	}
	public int getProductStockId() {
		return productStockId;
	}
	public void setProductStockId(int productStockId) {
		this.productStockId = productStockId;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public Date getBuyingDate() {
		return buyingDate;
	}
	public void setBuyingDate(Date buyingDate) {
		this.buyingDate = buyingDate;
	}
	public float getBuyingPrice() {
		return buyingPrice;
	}
	public void setBuyingPrice(float buyingPrice) {
		this.buyingPrice = buyingPrice;
	}
	public int getBoughtUnits() {
		return boughtUnits;
	}
	public void setBoughtUnits(int boughtUnits) {
		this.boughtUnits = boughtUnits;
	}
	public String getAddedBy() {
		return addedBy;
	}
	public void setAddedBy(String addedBy) {
		this.addedBy = addedBy;
	}
	public String getAdminNote() {
		return adminNote;
	}
	public void setAdminNote(String adminNote) {
		this.adminNote = adminNote;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
