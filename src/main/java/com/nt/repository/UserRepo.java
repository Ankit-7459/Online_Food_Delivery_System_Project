package com.nt.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nt.Model.UserLogin;

public interface UserRepo extends JpaRepository<UserLogin, Integer> {

	public UserLogin  findByEmail(String email);

}
