package controller;

import java.util.ArrayList;

import entity.UserInfo;
import model.UserRepository;

public class UserInfoController {
UserRepository repository;
	
	public UserInfoController(){
		repository = new UserRepository();
	}
	
    public boolean addUser(UserInfo user){
        return repository.addUser(user);
    }
    
    public ArrayList<UserInfo> getAll(){
    	return repository.getAll();
    }
    
}
