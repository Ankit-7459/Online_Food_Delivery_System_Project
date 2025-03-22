package com.nt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;


import com.nt.Model.OrderDetails;

public interface OrderRepo extends JpaRepository<OrderDetails, String>{

	 List<OrderDetails> findByUserId(Integer userId);
	 
	 
}
