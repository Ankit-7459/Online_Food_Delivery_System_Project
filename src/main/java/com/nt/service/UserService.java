package com.nt.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nt.Model.UserLogin;
import com.nt.repository.UserRepo;

@Service
public class UserService {

	@Autowired
	private UserRepo repo;
	
   
	public UserLogin save(UserLogin us) {
		
		UserLogin ul=repo.save(us);
		
		return ul;
		
	}
	
	public UserLogin findByEmail(String email) {
	
	UserLogin ul=repo.findByEmail(email);
	
	  return ul;
	
	}
	
	public List<UserLogin> FindByUserLogin(){
		
		
		return repo.findAll();
	}
	
	public void deleteUserById(Integer id) {
		
		repo.deleteById(id);
	}
	
	 public UserLogin getUserById(Integer id) {
	        return repo.findById(id).get();
	    }
		
}
