package com.nt.service;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nt.Model.CartItem;
import com.nt.Model.FoodDetails;
import com.nt.Model.Restourant;
import com.nt.repository.CartRepo;

@Service
public class CartService {

    @Autowired
    private CartRepo cartRepository;
    @Autowired
    private  FoodService service;
    @Autowired
    private UserService userservice;
    @Autowired
    private ResturentService res;

   
    public void addToCart(Integer userId, Integer foodId) {
        FoodDetails food = service.update(foodId);  
       
        Restourant restaurant = food.getResturent();
        if (food != null) {
            CartItem cartItem = new CartItem();
            cartItem.setUserId(userId);
            cartItem.setResturentName(restaurant.getRname());
            cartItem.setFoodName(food.getFood_name());
            cartItem.setImageName(food.getImageName());
            cartItem.setPrice(Math.round(food.getPrice())); 
            cartItem.setDiscount(Math.round(food.getDiscount()));  
            cartRepository.save(cartItem);
        }
    }
    
    
    public List<CartItem> getCartItemsByUserId(Integer userId) {
        return cartRepository.findByUserId(userId);
    }
    
   
    public void delete(Integer id) {
    
    cartRepository.deleteById(id);
    }
    
    public void clearCart(Integer userId) {
        cartRepository.deleteByUserId(userId);
    }
    
    
//    public void updateQuantity(Integer id, int change) {
//        Optional<CartItem> cartItemOptional = cartRepository.findById(id);
//
//        if (cartItemOptional.isPresent()) {
//            CartItem cartItem = cartItemOptional.get();
//            int newQuantity = cartItem.getQuantity() + change;
//
//            if (newQuantity > 0) {
//                cartItem.setQuantity(newQuantity);
//                cartItem.setPrice(newQuantity * cartItem.getPrice()); 
//                cartRepository.save(cartItem);
//            } else {
//                cartRepository.deleteById(id); 
//            }
//        }
        
//    }
}
