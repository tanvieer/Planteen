package controller;

import java.util.ArrayList;

public interface Controller<T> {
	public boolean add(T entity);
	public boolean edit(T entity);
	public boolean delete(int id);
	public T  getById(int id);
	public T getByName(String name);
	public ArrayList<T> getAll();
	
}
