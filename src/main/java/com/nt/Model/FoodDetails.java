package com.nt.Model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity

public class FoodDetails {
	
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Id
	private Integer f_id;
	private String food_name;
	
	private String discription;
	
	private Float price;
	
    private Integer quantity;
    
	private Float discount;
	
	 @ManyToOne(fetch= FetchType.LAZY)
	   
	 @JoinColumn(name="category_id",referencedColumnName="category_id")

	private Category category;
	
	private String imageName;
	
	 @ManyToOne(fetch= FetchType.LAZY)
	   
	 @JoinColumn(name="resturent_id")
	private Restourant resturent;
	 
	 


	public Restourant getResturent() {
		return resturent;
	}


	public void setResturent(Restourant resturent) {
		this.resturent = resturent;
	}


	public FoodDetails(Integer f_id, String food_name, String discription, Float price, Float discount,
			Category category, String imageName) {
		super();
		this.f_id = f_id;
		this.food_name = food_name;
		this.discription = discription;
		this.price = price;
		this.discount = discount;
		this.category = category;
		this.imageName = imageName;
	}


	public Integer getQuantity() {
		return quantity;
	}



	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public String getDiscription() {
		return discription;
	}



	public void setDiscription(String discription) {
		this.discription = discription;
	}



	public FoodDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getF_id() {
		return f_id;
	}

	public void setF_id(Integer f_id) {
		this.f_id = f_id;
	}

	public String getFood_name() {
		return food_name;
	}

	public void setFood_name(String food_name) {
		this.food_name = food_name;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public Float getDiscount() {
		return discount;
	}

	public void setDiscount(Float discount) {
		this.discount = discount;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	
	
	

	
	
	
	
	
	
	
	
	
}
