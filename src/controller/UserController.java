package controller;

import java.util.ArrayList;

import entity.User;
import model.UserRepository;

public class UserController implements Controller<User> {
	private UserRepository repository;

	public UserController() { // create repository by constructor
		repository = new UserRepository();
	}
	
	
	@Override
	public boolean add(User entity) { // add user
		return repository.add(entity);
	}

	

	@Override
	public boolean edit(User entity) {
		return repository.edit(entity);
	}
	
	public boolean editByUser(User entity) {
		return repository.editByUser(entity);
	}

	@Override
	public boolean delete(int id) {
		return repository.delete(id);
	}

	@Override
	public User getById(int id) {
		return repository.getById(id);
	}

	@Override
	public User getByName(String name) {
		return repository.getByName(name);
	}


	@Override
	public ArrayList<User> getAll() {
		return repository.getAll();
	}
	
	public User getByEmail(String mail) { // search by email  , interface a nai
		return repository.getByEmail(mail);
	}
	
	public boolean validateUserReg(){
		return false;
	}

}

