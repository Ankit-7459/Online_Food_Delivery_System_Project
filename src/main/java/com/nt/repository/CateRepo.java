package com.nt.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nt.Model.Category;
@Repository
public interface CateRepo extends JpaRepository<Category, Integer> {

}
