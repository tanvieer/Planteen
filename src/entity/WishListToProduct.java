package entity;

public class WishListToProduct {
	private int wishListId;
	private int productId;

	
	public WishListToProduct(int productId) {

		this.productId = productId;
		
	}
	
	public WishListToProduct(int wishListId, int productId) {
		this.wishListId = wishListId;
		this.productId = productId;
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


	
	
	
}
