package controller;

import java.util.ArrayList;

import entity.Category;
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

	public ArrayList<Product> getAllProductByCategoryId(int id) {
		return repository.getAllProductByCategoryId(id);
	}
	
	
	public ArrayList<Product> searchByName(String name){
		return repository.searchByName(name);
	}
	
	public ArrayList<Product> searchByNameCategoryId(String name,int id){
		return repository.searchByNameCategoryId(name,id);
	}
	
}
