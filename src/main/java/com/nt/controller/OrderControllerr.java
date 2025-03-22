package com.nt.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nt.Model.CartItem;
import com.nt.Model.OrderDetails;
import com.nt.service.CartService;
import com.nt.service.OrderService;


@Controller
public class OrderControllerr {
	
	@Autowired
	private OrderService   orderService;
	
	@Autowired
	
	private CartService cartService;
	
    @PostMapping("/placeOrder")
    public String placeOrder(HttpSession session, Model model) {
        Integer userId = (Integer) session.getAttribute("userId");

        if (userId == null) {
            return "redirect:/login"; 
        }

      
        List<CartItem> cartItems = cartService.getCartItemsByUserId(userId);

        if (cartItems == null || cartItems.isEmpty()) {
            model.addAttribute("message", "Your cart is empty!");
            return "redirect:/CartDetails"; 
        }

       
        OrderDetails order = new OrderDetails();
        OrderDetails savedOrder = orderService.saveOrder(order, userId, cartItems);

        if (savedOrder == null) {
            model.addAttribute("message3", "Order could not be placed. Try again!");
            return "redirect:/CartDetails"; 
        }

        

        model.addAttribute("order", savedOrder);
        model.addAttribute("message1","you order place seccesfully");
        model.addAttribute("message2","Your food has been deleverd with in days");
        
        return "orderConfirmation"; 
    }
    @GetMapping("/orderHistory")
    public String showOrderHistory(HttpSession session, Model model) {
        Integer userId = (Integer) session.getAttribute("userId");

        if (userId == null) {
            return "redirect:/Login";
        }

        List<OrderDetails> orders = orderService.getOrdersByUserId(userId);
        model.addAttribute("orders", orders);
        return "orderHistory"; 
    }
    
   
	
}
