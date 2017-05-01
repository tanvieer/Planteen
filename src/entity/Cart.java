package entity;

public class Cart {
	private int productId;
	private String productName;
	private int quantity;
	private float sellingPrice;
	private String imagePath;
	
	
	public Cart(){}
	


	public Cart(int productId, String productName) {
		this.productId = productId;
		this.productName = productName;
	}
	
	public Cart(int productId, String productName, int quantity,float sellingPrice, String imagePath) {
		this.productId = productId;
		this.productName = productName;
		this.quantity = quantity;
		this.sellingPrice = sellingPrice;
		this.imagePath = imagePath;
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



	@Override
	public String toString() {
		return "Cart [productId=" + productId + ", productName=" + productName
				+ "]";
	}
	
	
}
