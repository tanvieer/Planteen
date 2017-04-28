package controller;

import java.util.ArrayList;

import entity.User;
import model.UserRepository;

public class UserInfoController implements Controller<User> {
	UserRepository repository;

	public UserInfoController() { // create repository by constructor
		repository = new UserRepository();
	}
	
	
	@Override
	public boolean add(User user) { // add user
		// TODO Auto-generated method stub
		return repository.add(user);
	}

	

	@Override
	public boolean edit(User entity) {
		// TODO Auto-generated method stub
		return repository.edit(entity);
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return repository.delete(id);
	}

	@Override
	public User getById(int id) {
		// TODO Auto-generated method stub
		return repository.getById(id);
	}

	@Override
	public User getByName(String name) {
		// TODO Auto-generated method stub
		return repository.getByName(name);
	}


	@Override
	public ArrayList<User> getAll() {
		// TODO Auto-generated method stub
		return repository.getAll();
	}
	
	
	
	
	
	
	public User getByEmail(String mail) { // search by email  , interface a nai
		return repository.getByEmail(mail);
	}

}
/*
 public boolean addUser(User user) { // add user
		return repository.add(user);
	}

	public ArrayList<User> getAll() { // get all users
		return repository.getAll();
	}

	public User getUserByUsername(String name) { // search by username
		return repository.getByName(name);
	}

	public boolean editUserByUsername(User userinfo) { // edit user
		return repository.edit(userinfo);
	}

	public User getByEmail(String mail) { // search by email  , interface a nai
		return repository.getByEmail(mail);
	}

	public boolean deleteUserById(int userId) { // delete user by id
		return repository.delete(userId);
	}
	*/
