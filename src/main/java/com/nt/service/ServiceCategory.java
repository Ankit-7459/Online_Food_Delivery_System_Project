package com.nt.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nt.Model.Category;
import com.nt.repository.CateRepo;

@Service
public class ServiceCategory {

	@Autowired	
	private CateRepo repo;
	
	
	public Category addCategory(Category cust) {
		
		Category obj=repo.save(cust);
		
		return obj;
	}
	
	public List<Category> findAllCategory(){
		
		List<Category> data=repo.findAll();
		
		
		return data;
		
	}
	
	public Category updateCategory(Integer id) {
	
		Category cust=repo.findById(id).get();
		
		if(cust!=null) {
			
			cust.setName(cust.getName());
			cust.setDiscription(cust.getDiscription());
			
				
		}
		
		 return repo.save(cust);
	
		
	}
	
	
	public void deleteCategary(Integer id) {
		
		repo.deleteById(id);
		
	}
	
}
