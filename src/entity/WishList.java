package entity;

public class WishList {
	private int wishListId;
	private int userId;
	
	public WishList( int userId) {
	
		this.userId = userId;
	}
	
	public WishList(int wishListId, int userId) {
	
		this.wishListId = wishListId;
		this.userId = userId;
	}
	public int getWishListId() {
		return wishListId;
	}
	public void setWishListId(int wishListId) {
		this.wishListId = wishListId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	
	
}
