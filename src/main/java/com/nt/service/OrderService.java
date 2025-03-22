package com.nt.service;



import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nt.Model.CartItem;
import com.nt.Model.OrderDetails;
import com.nt.Model.UserLogin;
import com.nt.repository.OrderRepo;

@Service
public class OrderService {

    @Autowired
    private OrderRepo orderRepository;
    @Autowired
   private  CartService cartservice;
    
    @Autowired
    UserService userservice;
  
    public OrderDetails saveOrder(OrderDetails order, Integer userId, List<CartItem> cartItems) {
        if (cartItems == null || cartItems.isEmpty()) {
            return null; 
        }

        UserLogin optionalUser = userservice.getUserById(userId);
        order.setUserId(userId);
        order.setUserEmail(optionalUser.getEmail());
        order.setUserName(optionalUser.getFirst_name());
        order.setUserPhone(optionalUser.getMobile());
        order.setOrderItems(cartItems);
        order.setOrderDate(LocalDate.now().toString()); 
        order.setDeliveryDate("Pending");
        order.setDeliveryStatus("Pending");

      
        OrderDetails savedOrder = orderRepository.save(order);

      
        return savedOrder;
    }


   
    public List<OrderDetails> getAllOrders() {
        return orderRepository.findAll();
    }

   
    public OrderDetails getOrderById(String orderId) {
        return orderRepository.findById(orderId).get();
    }

   
    public List<OrderDetails> getOrdersByUserId(Integer userId) {
        return orderRepository.findByUserId(userId);
    }

   
    public OrderDetails updateOrderStatus(String orderId, String status, String deliveryDate) {
        Optional<OrderDetails> optionalOrder = orderRepository.findById(orderId);
        if (optionalOrder.isPresent()) {
        	OrderDetails order = optionalOrder.get();
            order.setDeliveryStatus(status);
            if (deliveryDate != null && !deliveryDate.isEmpty()) {
                order.setDeliveryDate(deliveryDate);
            }
            return orderRepository.save(order);
        }else {
        	
        	return null;
        }
      
    } 
    public void deleteOrder(String orderId) {
        orderRepository.deleteById(orderId);
    }
    
  
}

