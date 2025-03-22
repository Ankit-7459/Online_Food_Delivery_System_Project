package com.nt.fooddto;

public class FoodDto{

    private Integer f_id;
	
	private String food_name;
	
	private Float price;
	
	private String discription;
	
	private Float discount;
	
	private Integer categoryId;
	
	private Integer UserId;
	
	private String imageName;
	
	private Integer quantity;
	
	private Integer resturrentId;
	

	public Integer getResturrentId() {
		return resturrentId;
	}

	public void setResturrentId(Integer resturrentId) {
		this.resturrentId = resturrentId;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Integer getUserId() {
		return UserId;
	}

	public void setUserId(Integer userId) {
		UserId = userId;
	}

	public FoodDto() {
		super();
		
	}

	public FoodDto(Integer f_id, String food_name, Float price, String discription, Float discount, Integer categoryId,
			String imageName) {
		super();
		this.f_id = f_id;
		this.food_name = food_name;
		this.price = price;
		this.discription = discription;
		this.discount = discount;
		this.categoryId = categoryId;
		this.imageName = imageName;
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

	public String getDiscription() {
		return discription;
	}

	public void setDiscription(String discription) {
		this.discription = discription;
	}

	public Float getDiscount() {
		return discount;
	}

	public void setDiscount(Float discount) {
		this.discount = discount;
	}

	public Integer getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	
	



	
}
