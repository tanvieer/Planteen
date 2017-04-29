package controller;

import java.util.ArrayList;

import entity.Invoice;
import entity.WishList;
import model.WishListRepository;

public class WishListController implements Controller<WishList> {
	
	private WishListRepository repository;
	
	public WishListController() {
		repository= new WishListRepository();
	}
	
	@Override
	public boolean add(WishList entity) {
		return repository.add(entity);
	}

	@Override
	public boolean edit(WishList entity) {
		return repository.edit(entity);
	}

	@Override
	public boolean delete(int id) {
		return repository.delete(id);
	}


	@Override
	public WishList getById(int id) {
		return repository.getById(id);
	}

	@Override
	public WishList getByName(String name) {
		//return repository.getByName(name);
		System.out.println("not implemented ");
		return null;
	}


	@Override
	public ArrayList<WishList> getAll() {
		return repository.getAll();
	}
}
