package com.nt.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nt.Global.GlobalData;
import com.nt.Model.UserLogin;
import com.nt.service.UserService;
@Controller
public class UserController {

	@Autowired
	private UserService service;
	
	
	
	 @GetMapping("/ragister")
	    
	    public String register(){
	    	
	    	return "UserPages";
	    	
	    }
	 
	 @PostMapping("/save/user")
	 
	 public String saveUser(@ModelAttribute UserLogin ul) {
		 
		 UserLogin user=service.save(ul) ;
		 
		 return "redirect:/Login";
	 }
	 
	 @GetMapping("/Login")
	 
	 public String login() {
		 
		
		 
		 return "Login";
	 }
	 
 @PostMapping("/Login/admin/customer")
	 
	 public String loginDetails(@RequestParam String email,@RequestParam String password ,HttpSession session) {
	 
       
	 
	 UserLogin ul=service.findByEmail(email);
	 
	 if(ul!=null && ul.getEmail().equalsIgnoreCase(email) && ul.getPassword().equals(password)) {
		 
		 
		
		 
		 if(ul.getEmail().equals("admin123@gamil.com") && ul.getPassword().equals(password)) {
			 
			 session.setAttribute("loggedIn", true);
			 session.setAttribute("isAdmin", true);
			 session.setAttribute("email", email);
			 
			 return "redirect:/home";
			  
		   }

	 
	 else {
		 session.setAttribute("loggedIn", false);
		 session.setAttribute("isAdmin", false);
         session.setAttribute("email", email);
         
         session.setAttribute("userId", ul.getId());
        

         
         return "redirect:/home";
	   }
		
	 }else {
			 
			 return "redirect:/Login";   
			 
	 } 
		 
		 
	 
	 
	 
		 
		
	 }
 
   @GetMapping("/logout")
   
   public String logout(HttpSession Session) {
	   
	   Session.invalidate();
	   
	   return "redirect:/Login";
   }
   
   @GetMapping("/find/User")
   
   public String UserDetails(Model model) {
	   
	  model.addAttribute("UserLogin", service.FindByUserLogin()) ;
	  
	  return "UserViewsPage";
   }
   
   @GetMapping("/delete/user/{id}")
   public String deleteById(@PathVariable Integer id) {
	   
	   service.deleteUserById(id);
	   
	  return "redirect:/find/User"; 
	   
   }
	
}
