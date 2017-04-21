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
    
    public UserInfo getUserByUsername(String uname){
    	return repository.getUserByUsername(uname);
    }
    
    public boolean editUserByUsername(UserInfo userinfo){
    	return repository.editUserByUsername(userinfo);
    }
    
    public boolean deleteUserByUsername(String uname){
    	return repository.deleteUserByUsername(uname);
    }
    
    public UserInfo getUserByEmail(String mail){
    	return repository.getUserByEmail(mail);
    }
    
}
