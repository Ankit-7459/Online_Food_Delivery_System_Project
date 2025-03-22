package com.nt.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.nt.Model.FoodDetails;
import com.nt.service.FoodService;
import com.nt.service.ServiceCategory;

@Controller
public class HomeController {

		@Autowired
		private FoodService fdservice;	
		@Autowired
		 private ServiceCategory service;
		
		@GetMapping({"/" , "/home"})
		public String homeController(Model model) {
			
			model.addAttribute("categories", service.findAllCategory());
			model.addAttribute("Food",fdservice.getAllFoodDetails());
			
			
			return "HomePage";
		}
		
		
		
		@GetMapping("/update/category/{id}")
		
		public String FindById(@PathVariable Integer id,Model model) {
			
			List<FoodDetails>fd=fdservice.getAllProductByCategoryId(id);
			
			model.addAttribute("categories", service.findAllCategory());
			model.addAttribute("Food",fd);
			
		
			
			return "HomePage";
		}
		
		@GetMapping("/view/food/{f_id}")
		
		public String ViewProduct(@PathVariable Integer f_id, Model model) {
			
			model.addAttribute("Food", fdservice.update(f_id));
			
			
			return "ViewFodds";
			
		}
		
	}

