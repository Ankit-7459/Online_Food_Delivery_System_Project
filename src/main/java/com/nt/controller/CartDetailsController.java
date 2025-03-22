package com.nt.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;



import com.nt.Model.CartItem;
import com.nt.service.CartService;

@Controller

public class CartDetailsController {

	
	
	 @Autowired
	    private CartService cartService;

	  @GetMapping("/cart/add/{foodId}")
	    public String addToCart(@PathVariable Integer foodId, HttpSession session) {
	        Integer userId = (Integer) session.getAttribute("userId");
	        if (userId == null) {
	            return "redirect:/Login";
	        }
	        
	        cartService.addToCart(userId, foodId);
	        return "redirect:/home";
	    }
   
	       
	  @GetMapping("/cart/view")
	    public String viewCart(HttpSession session, Model model) {
	        Integer userId = (Integer) session.getAttribute("userId");
	        if (userId == null) {
	            return "redirect:/Login";
	        }

	        List<CartItem> cartItems = cartService.getCartItemsByUserId(userId);
	        
	        double totalAmount = cartItems.stream()
	                .mapToDouble(item -> item.getPrice())
	                .sum();
	        model.addAttribute("cartItems", cartItems);
	        model.addAttribute("total",totalAmount);
	        return "CartDetails";
	    }
	  
	  
	  @GetMapping("/cart/removeItem/item/{id}")
	  public String removeItem(@PathVariable Integer id, HttpSession session) {
	      Integer userId = (Integer) session.getAttribute("userId");

	      if (userId == null) {
	          return "redirect:/Login"; 
	      }

	      cartService.delete(id);
	      return "redirect:/cart/view";
	  }
	  
	  @GetMapping("/cart/checkout")
		
		public String Checkout(HttpSession session,Model model) {
		  
		  Integer userId = (Integer) session.getAttribute("userId");
	        if (userId == null) {
	            return "redirect:/Login";
	        }

	        List<CartItem> cartItems = cartService.getCartItemsByUserId(userId);
	        
	        double totalAmount = cartItems.stream()
	                .mapToDouble(item -> item.getPrice())
	                .sum();
	        model.addAttribute("cartItems", cartItems);
	        model.addAttribute("total",totalAmount);
	        
	      
	        
	  return "checkOut";
	   
	}

}
