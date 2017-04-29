package controller;

import java.util.ArrayList;

import entity.InvoiceToProduct;
import entity.WishListToProduct;
import model.WishListToProductRepository;

public class WishListToProductController implements Controller<WishListToProduct> {
	
	private WishListToProductRepository repository;
	
	public WishListToProductController() {
		repository= new WishListToProductRepository();
	}
	
	@Override
	public boolean add(WishListToProduct entity) { // add user
		return repository.add(entity);
	}

	

	@Override
	public boolean edit(WishListToProduct entity) {
		return repository.edit(entity);
	}

	@Override
	public boolean delete(int id){
		System.out.println("Delete method with 1 parameter is not implemented");
		return false;
	}
	public boolean delete(int wishListId, int productId) {
		return repository.deleteProductFromWishList(wishListId, productId);
	}


	@Override
	public WishListToProduct getById(int id) {
		System.out.println("getbyID of invoice repo is not implemented");
		return repository.getById(id);
	}

	@Override
	public WishListToProduct getByName(String name) {
		//return repository.getByName(name);
		System.out.println("not implemented ");
		return null;
	}


	@Override
	public ArrayList<WishListToProduct> getAll() {
		System.out.println("getall is not implemented use getInvoiceItems");
		return null;
	}
	public ArrayList<WishListToProduct> getWishListItems(int id){
		return repository.getWishListItems(id);
	}

}
