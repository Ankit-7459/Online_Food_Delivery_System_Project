package com.nt.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Category {

	
	@GeneratedValue(strategy=GenerationType.AUTO)
	
	@Id
	@Column(name="category_id")
	private Integer id;
	
	private String name;
	
	private String discription;
	
	public Category() {
		super();
		
	}

	public Category(Integer id, String name, String discription) {
		super();
		this.id = id;
		this.name = name;
		this.discription = discription;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDiscription() {
		return discription;
	}

	public void setDiscription(String discription) {
		this.discription = discription;
	}
	
	
	
}
