package com.nt.controller;



import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.nt.Model.Category;
import com.nt.Model.FoodDetails;
import com.nt.Model.OrderDetails;
import com.nt.Model.Restourant;
import com.nt.fooddto.FoodDto;
import com.nt.service.FoodService;
import com.nt.service.OrderService;
import com.nt.service.ResturentService;
import com.nt.service.ServiceCategory;

@Controller
public class AdminController {
	public static String uploadDir=System.getProperty("user.dir")+ "/src/main/webapp/dynammicImages";
	@Autowired
	private ServiceCategory service;
	@Autowired
	private FoodService fdservice;
	@Autowired
	private OrderService OrderService;
	
	@Autowired
	
   private 	ResturentService res;
	
	
	@GetMapping("/adminHomePages")
	public String AdminHomeHome() {
		
		return "Adminhomepages";
	}
	@GetMapping("/admin")
	public String AdminHome() {
		
		return "AdminPage";
	}
	
	@GetMapping("/category")
	public String category() {
		
		return "AddCategory";
	}
	
	@PostMapping("/addCategories")
	
	public String addCategories(@ModelAttribute ("cust")  Category cate) {
		
		
		service.addCategory(cate);
		
		
		return "AdminPage";
		
	}
	
	@GetMapping("/totalCategories")
	public String categorytotal(Model model) {
		
     List<Category> cate=service.findAllCategory();
		
	 model.addAttribute("categries", cate);
	  	
		return "TotalCategores";
	}
	
	
	@GetMapping("/update/categaries/{id}")
	
	public String UpdateCategories(@PathVariable Integer id,Model model) {
		
		Category cust=service.updateCategory(id);
		
		model.addAttribute("cust", cust);
		
		return "AddCategory";
		
	}
	
	
	@GetMapping("/delete/categaries/{id}")
	
	 public String delete(@PathVariable Integer id) {
		
		service.deleteCategary(id);
		
		
		return "redirect:/totalCategories";
		
	}
	
	///Food section
	
	
	@GetMapping("/ShowAllFoods")
	
	public String getAllFoodDetails(Model model) {
		
		List<FoodDetails> fd=fdservice.getAllFoodDetails();
		
		model.addAttribute("FoodDetails", fd);
		
		
		return "Foods";
	}
	
	@GetMapping("/Add/Food")
	
	public String findCategiresAndAdFood(Model model) {
		
		FoodDto fd=new FoodDto();
		
		model.addAttribute("food", fd);
		model.addAttribute("categories", service.findAllCategory());
		model.addAttribute("resurent", res.FetchAllResturent());
		
		return "AddFood";
		
	}
	
	@PostMapping("/Add/Food/details")
	
	public String AddAllFood(@ModelAttribute ("food") FoodDto fd,
			                    @RequestParam MultipartFile file,
                               @RequestParam  String  imageName ,HttpSession session)throws IOException{
		
	
		
		 
		FoodDetails fs=new FoodDetails();
		
		fs.setF_id(fd.getF_id());
		fs.setQuantity(fd.getQuantity());
		fs.setFood_name(fd.getFood_name());
		fs.setDiscription(fd.getDiscription());
		fs.setPrice(fd.getPrice());
		fs.setDiscount(fd.getDiscount());
		
		fs.setCategory(service.updateCategory(fd.getCategoryId()));
		
		fs.setResturent(res.upadeResturent(fd.getResturrentId()));
		
	
		String imageuuid;
		
		if(!file.isEmpty()) {
			imageuuid=file.getOriginalFilename();
			Path filenamePath=Paths.get(uploadDir,imageuuid);
			Files.write(filenamePath, file.getBytes());
		}
		else {
			imageuuid=imageName;
		}

		 fs.setImageName(imageuuid);
		 
		 fdservice.saveFood(fs);
		
		return "redirect:/admin";
	
	} 
	
	@GetMapping("/delete/food/details/{f_id}")
	
	public String deleteFood(@PathVariable Integer f_id) {
	
	   fdservice.deleteFoodDetailsById(f_id);
	   
	   return "redirect:/ShowAllFoods";
	 
	}
	
	
	@GetMapping("/update/food/details/{f_id}")
	   public String UpdateProduct(@PathVariable Integer f_id ,Model model ) {
		
		FoodDetails fs=fdservice.update(f_id);
		FoodDto fd=new FoodDto();
		 fd.setFood_name(fs.getFood_name());
		 fd.setDiscription(fs.getDiscription());
		 fd.setPrice(fs.getPrice());
		 fd.setDiscount(fs.getDiscount()); 
		 fd.setCategoryId(fs.getCategory().getId());
		 fd.setImageName(fs.getImageName());
		 model.addAttribute("categories", service.findAllCategory());
		 model.addAttribute("food", fd);
			
		 return"AddFood";
	   }
	
	
	 @GetMapping("/Admin/orders")
	    public String showAllOrders(Model model) {
	        List<OrderDetails> orders = OrderService.getAllOrders();
	        model.addAttribute("orders", orders);
	        return "OrderAdmin"; 
	    }
	 
	 @PostMapping("/Admin/orders/update/{orderId}")
	    public String updateOrder(@PathVariable String orderId,
	                              @RequestParam String status,
	                              @RequestParam(required = false) String deliveryDate) {
		    OrderService.updateOrderStatus(orderId, status, deliveryDate);
	        return "redirect:/Admin/orders";
	    }
	 
	 
       @GetMapping("/resurent")
       
       public String findAllResturent(Model model) {
    	   
    	   
    	   model.addAttribute("resurent", res.FetchAllResturent());
    	   
    	   
    	   return "Resturent_list";
    	   
       }
       
       
      @GetMapping("/resurent/Add")
       
       public String resturn() {
    	   
    	   return "Resturent";
    	   
       }
       
     @PostMapping("/resurent/Add")
       
       public String save(@ModelAttribute Restourant rest) {
    	   
    	   
    	       res.saveResturent(rest);
    	   
    	   return "redirect:/admin";
    	   
       }
	 }

