package controller;

import java.util.ArrayList;
import entity.Product;
import model.ProductRepository;

public class ProductController implements Controller<Product> {
	private ProductRepository repository;
	
	public ProductController(){
		repository= new ProductRepository();
	}

	@Override
	public boolean add(Product entity) {
		return repository.add(entity);
	}

	

	@Override
	public boolean edit(Product entity) {
		return repository.edit(entity);
	}

	@Override
	public boolean delete(int id) {
		return repository.delete(id);
	}


	@Override
	public Product getById(int id) {
		return repository.getById(id);
	}

	@Override
	public Product getByName(String name) {
		//return repository.getByName(name);
		System.out.println("not implemented ");
		return null;
	}


	@Override
	public ArrayList<Product> getAll() {
		return repository.getAll();
	}
	
}
