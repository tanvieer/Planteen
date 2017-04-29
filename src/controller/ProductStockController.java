package controller;

import java.util.ArrayList;

import entity.Product;
import entity.ProductStock;
import model.ProductRepository;
import model.ProductStockRepository;

public class ProductStockController implements Controller<ProductStock> {
	
	private ProductStockRepository repository;
	
	public ProductStockController() {
		repository= new ProductStockRepository();
	}
	
	@Override
	public boolean add(ProductStock entity) {
		return repository.add(entity);
	}

	

	@Override
	public boolean edit(ProductStock entity) {
		return repository.edit(entity);
	}

	@Override
	public boolean delete(int id) {
		return repository.delete(id);
	}


	@Override
	public ProductStock getById(int id) {
		return repository.getById(id);
	}

	@Override
	public ProductStock getByName(String name) {
		//return repository.getByName(name);
		System.out.println("not implemented ");
		return null;
	}


	@Override
	public ArrayList<ProductStock> getAll() {
		return repository.getAll();
	}
}
