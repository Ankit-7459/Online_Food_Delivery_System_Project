package com.nt.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Restourant {

	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	@Column(name="resturent_id")
	private Integer id;
	private String Rname;
	private String location;
	
	
	public Restourant() {
		super();
	}
	
	public String getRname() {
		return Rname;
	}

	public void setRname(String rname) {
		Rname = rname;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}
	
	
	
}
