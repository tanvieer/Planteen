package entity;

public class CartItem {
	private int productId;
	private String productName;
	private int quantity;
	private float sellingPrice;
	private String imagePath;
	private float buyingPrice;
	private String productDetails;
	
	
	public CartItem(){}
	


	public CartItem(int productId, String productName) {
		this.productId = productId;
		this.productName = productName;
	}
	
	public CartItem(int productId, String productName, int quantity,float sellingPrice, String imagePath, float buyingPrice) {
		this.productId = productId;
		this.productName = productName;
		this.quantity = quantity;
		this.sellingPrice = sellingPrice;
		this.imagePath = imagePath;
		this.buyingPrice = buyingPrice;
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

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
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
	
	



	public float getBuyingPrice() {
		return buyingPrice;
	}



	public void setBuyingPrice(float buyingPrice) {
		this.buyingPrice = buyingPrice;
	}

	

	public String getProductDetails() {
		return productDetails;
	}



	public void setProductDetails(String productDetails) {
		this.productDetails = productDetails;
	}



	@Override
	public String toString() {
		return "CartItem [productId=" + productId + ", productName="
				+ productName + ", quantity=" + quantity + ", sellingPrice="
				+ sellingPrice + ", imagePath=" + imagePath + ", buyingPrice="
				+ buyingPrice + ", productDetails=" + productDetails + "]";
	}



	
	
	
}
