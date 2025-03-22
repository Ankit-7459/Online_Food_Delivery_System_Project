package com.nt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nt.Model.CartItem;

public interface CartRepo extends JpaRepository<CartItem, Integer> {
	
	 List<CartItem> findByUserId(Integer userId);
	 
	  void deleteByUserId(Integer userId);
	
}
