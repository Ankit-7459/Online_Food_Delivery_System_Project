package com.nt.Model;

import javax.persistence.*;
import java.util.List;
import java.util.UUID;

@Entity
public class OrderDetails {

    @Id
    private String  orderid;
    private Integer userId;
    private String userName;
    private String userEmail;
    private Long userPhone;
    private String ResturentName;
	private String orderDate;
    private String deliveryDate;
    private String deliveryStatus;
   
   
	@OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name = "order_id")  
    private List<CartItem> orderItems;  
    
    
    public String getResturentName() {
		return ResturentName;
	}
	public void setResturentName(String resturentName) {
		ResturentName = resturentName;
	}

    public OrderDetails() {
        super();
        
        this.orderid = UUID.randomUUID().toString().substring(0, 10);
    }

	

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getOrderid() {
		return orderid;
	}

	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public Long getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(Long userPhone) {
		this.userPhone = userPhone;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public String getDeliveryDate() {
		return deliveryDate;
	}

	public void setDeliveryDate(String deliveryDate) {
		this.deliveryDate = deliveryDate;
	}

	public String getDeliveryStatus() {
		return deliveryStatus;
	}

	public void setDeliveryStatus(String deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}

	public List<CartItem> getOrderItems() {
		return orderItems;
	}

	public void setOrderItems(List<CartItem> orderItems) {
		this.orderItems = orderItems;
	}

    
}
