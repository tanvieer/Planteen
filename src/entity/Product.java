package entity;

public class Product {
	private int productId;
	private String productName;
	private int categoryId;
	private float sellingPrice;
	private String imagePath;
	private String productDetails;
	private String status;
	
	public Product( String productName, int categoryId, float sellingPrice, String imagePath,String productDetails, String status) {
		
		this.productName = productName;
		this.categoryId = categoryId;
		this.sellingPrice = sellingPrice;
		this.imagePath = imagePath;
		this.productDetails = productDetails;
		this.status = status;
	}
	
	public Product(int productId, String productName, int categoryId, float sellingPrice, String imagePath,String productDetails, String status) {
	
		this.productId = productId;
		this.productName = productName;
		this.categoryId = categoryId;
		this.sellingPrice = sellingPrice;
		this.imagePath = imagePath;
		this.productDetails = productDetails;
		this.status = status;
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
}
