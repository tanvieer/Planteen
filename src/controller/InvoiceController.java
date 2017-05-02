package controller;

import java.util.ArrayList;

import entity.Invoice;
import model.InvoiceRepository;

public class InvoiceController implements Controller<Invoice> {
	private InvoiceRepository  repository;
	
	public InvoiceController() { // create repository by constructor
		repository = new InvoiceRepository();
	}
	
	
	public Invoice getByPrimaryId(String id) {
		return repository.getByPrimaryId(id);
	}
	
	public boolean deleteByPrimaryId(String id) {
		return repository.deleteByPrimaryId(id);
	}
	
	
	
	
	@Override
	public boolean add(Invoice entity) { 
		return repository.add(entity);
	}

	

	@Override
	public boolean edit(Invoice entity) {
		return repository.edit(entity);
	}

	@Override
	public boolean delete(int id) {
		return repository.delete(id);
	}


	@Override
	public Invoice getById(int id) {
		return repository.getById(id);
	}

	@Override
	public Invoice getByName(String name) {
		//return repository.getByName(name);
		System.out.println("not implemented ");
		return null;
	}


	@Override
	public ArrayList<Invoice> getAll() {
		return repository.getAll();
	}
}
