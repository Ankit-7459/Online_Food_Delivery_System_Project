package com.nt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nt.Model.FoodDetails;
@Repository
public interface Foodrepo extends JpaRepository<FoodDetails, Integer> { 
	
	List<FoodDetails> findAllByCategory_Id(Integer id);
	
//	 List<FoodDetails> findByCategoryIdAndNameContainingIgnoreCase(Integer categoryId, String name);
//
//	  List<FoodDetails> findByNameContainingIgnoreCase(String name);
}
