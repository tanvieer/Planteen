package controller;

import java.util.ArrayList;

import entity.Invoice;
import entity.InvoiceToProduct;
import model.InvoiceToProductRepository;

public class InvoiceToProductController implements Controller<InvoiceToProduct>{
	
	private InvoiceToProductRepository repository;
	
	public InvoiceToProductController() {
		repository= new InvoiceToProductRepository();
	}
	@Override
	public boolean add(InvoiceToProduct entity) { // add user
		return repository.add(entity);
	}

	

	@Override
	public boolean edit(InvoiceToProduct entity) {
		return repository.edit(entity);
	}

	@Override
	public boolean delete(int id){
		System.out.println("Delete method with 1 parameter is not implemented");
		return false;
	}
	public boolean delete(int invoiceId, int productId) {
		return repository.delete(invoiceId,productId);
	}


	@Override
	public InvoiceToProduct getById(int id) {
		System.out.println("getbyID of invoice repo is not implemented");
		return repository.getById(id);
	}

	@Override
	public InvoiceToProduct getByName(String name) {
		//return repository.getByName(name);
		System.out.println("not implemented ");
		return null;
	}


	@Override
	public ArrayList<InvoiceToProduct> getAll() {
		System.out.println("getall is not implemented use getInvoiceItems");
		return null;
	}
	public ArrayList<InvoiceToProduct> getInvoiceItems(String id){
		return repository.getInvoiceItems(id);
	}

}
