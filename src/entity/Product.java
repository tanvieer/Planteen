package entity;

import java.sql.Date;

public class Product {
	private int productId;
	private String productName;
	private int categoryId;
	private float sellingPrice;
	private String imagePath;
	private String productDetails;
	private Date buyingDate;
	private float buyingPrice;
	private int boughtUnits;
	private int remainingUnits;
	private String addedBy;
	private String adminNote;
	private boolean isVisible;
	
	
	
	
	public Product() {
	}

	public Product( String productName, int categoryId, float sellingPrice, String imagePath,String productDetails, boolean isVisible) {
		
		this.productName = productName;
		this.categoryId = categoryId;
		this.sellingPrice = sellingPrice;
		this.imagePath = imagePath;
		this.productDetails = productDetails;
		this.isVisible = isVisible;
	}
	
	public Product(int productId, String productName, int categoryId, float sellingPrice, String imagePath,String productDetails, boolean isVisible) {
	
		this.productId = productId;
		this.productName = productName;
		this.categoryId = categoryId;
		this.sellingPrice = sellingPrice;
		this.imagePath = imagePath;
		this.productDetails = productDetails;
		this.isVisible = isVisible;
	}
	
	
	
	
	public Product(int productId, String productName, int categoryId, float sellingPrice, String imagePath,
			String productDetails, Date buyingDate, float buyingPrice, int boughtUnits, int remainingUnits,
			String addedBy, String adminNote, boolean isVisible) {
	
		this.productId = productId;
		this.productName = productName;
		this.categoryId = categoryId;
		this.sellingPrice = sellingPrice;
		this.imagePath = imagePath;
		this.productDetails = productDetails;
		this.buyingDate = buyingDate;
		this.buyingPrice = buyingPrice;
		this.boughtUnits = boughtUnits;
		this.remainingUnits = remainingUnits;
		this.addedBy = addedBy;
		this.adminNote = adminNote;
		this.isVisible = isVisible;
	}
	
	public Product( String productName, int categoryId, float sellingPrice, String imagePath,
			String productDetails, Date buyingDate, float buyingPrice, int boughtUnits, int remainingUnits,
			String addedBy, String adminNote, boolean isVisible) {
	
		
		this.productName = productName;
		this.categoryId = categoryId;
		this.sellingPrice = sellingPrice;
		this.imagePath = imagePath;
		this.productDetails = productDetails;
		this.buyingDate = buyingDate;
		this.buyingPrice = buyingPrice;
		this.boughtUnits = boughtUnits;
		this.remainingUnits = remainingUnits;
		this.addedBy = addedBy;
		this.adminNote = adminNote;
		this.isVisible = isVisible;
	}

	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public float getSellingPrice() {
		return sellingPrice;
	}
	public void setSellingPrice(float sellingPrice) {
		this.sellingPrice = sellingPrice;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public String getProductDetails() {
		return productDetails;
	}
	public void setProductDetails(String productDetails) {
		this.productDetails = productDetails;
	}
	public boolean getisVisible() {
		return isVisible;
	}
	public void setisVisible(boolean isVisible) {
		this.isVisible = isVisible;
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

	public int getRemainingUnits() {
		return remainingUnits;
	}

	public void setRemainingUnits(int remainingUnits) {
		this.remainingUnits = remainingUnits;
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

	public boolean isVisible() {
		return isVisible;
	}

	public void setVisible(boolean isVisible) {
		this.isVisible = isVisible;
	}

	@Override
	public String toString() {
		return "Product [productId=" + productId + ", productName=" + productName + ", categoryId=" + categoryId
				+ ", sellingPrice=" + sellingPrice + ", imagePath=" + imagePath + ", productDetails=" + productDetails
				+ ", buyingDate=" + buyingDate + ", buyingPrice=" + buyingPrice + ", boughtUnits=" + boughtUnits
				+ ", remainingUnits=" + remainingUnits + ", addedBy=" + addedBy + ", adminNote=" + adminNote
				+ ", isVisible=" + isVisible + "]";
	}

	
	
	
	
}
