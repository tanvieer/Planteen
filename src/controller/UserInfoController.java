package controller;

import entity.UserInfo;
import model.UserRepository;

public class UserInfoController {
UserRepository repository;
	
	public UserInfoController(){
		repository = new UserRepository();
	}
	
    public boolean add(UserInfo user){
        return repository.addUser(user);
    }
    
}
