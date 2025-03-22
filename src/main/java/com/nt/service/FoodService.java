package com.nt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.nt.Model.FoodDetails;
import com.nt.repository.Foodrepo;

@Service
public class FoodService {
	
	@Autowired
	
	private Foodrepo repo;

	public List<FoodDetails> getAllFoodDetails(){
		
		List<FoodDetails> list =repo.findAll();
		
		
		
		return list;
		
	}
	
	public FoodDetails saveFood(FoodDetails fd) {
		
		
		FoodDetails food=repo.save(fd);
		
		return food;
	}
	
	public void deleteFoodDetailsById(Integer id) {
		
		repo.deleteById(id);
		
	}
	
	public FoodDetails update(Integer id) {
		
		FoodDetails fd=repo.findById(id).get();
		
		return fd;
		
	}
	
public List<FoodDetails> getAllProductByCategoryId(Integer id){
		
		return repo.findAllByCategory_Id(id);
	}


    
}
