package com.nt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.nt.Model.Restourant;
import com.nt.repository.ResturentRepository;

@Service
public class ResturentService {

	@Autowired
	
	private ResturentRepository repo;
	
	
     public List<Restourant> FetchAllResturent(){
	
	   List<Restourant> res=repo.findAll();
	   
	   return res;
   }
     
     
     public Restourant saveResturent(Restourant res){
    		
  	  Restourant result=repo.save(res);
  	   
  	   return result;
     }
       
     public Restourant upadeResturent(Integer id){
    	 
     Restourant rs=repo.findById(id).get();
    			
    	return rs;
    			
    
        }
          
	
}
