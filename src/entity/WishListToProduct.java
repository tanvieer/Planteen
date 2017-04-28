package entity;

public class WishListToProduct {
	private int wishListId;
	private int productId;
	private int quantity;
	
	public WishListToProduct(int productId, int quantity) {

		this.productId = productId;
		this.quantity = quantity;
	}
	
	public WishListToProduct(int wishListId, int productId, int quantity) {
		this.wishListId = wishListId;
		this.productId = productId;
		this.quantity = quantity;
	}
	public int getWishListId() {
		return wishListId;
	}
	public void setWishListId(int wishListId) {
		this.wishListId = wishListId;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
	
}
