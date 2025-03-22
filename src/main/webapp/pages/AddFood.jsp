<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
      <%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
      
      
      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
  
  <style>
  
   body{
        background-color:rgb(255, 235, 205);
       
    }

    .input_box{
    
       background-color: green;
       
        border-radius: 7px 6px 7px 8px;
    }
    
  
    
    .div_group1{
    
          width: 462px;
          height: 55px;
              
        }
        
        .div_group2{
        
        height: 238px;
         width: 463px;
              
        
        
        }
       
        
    
  
     .cancel_form{
     
           
     }
     .group_of_span{
     
   width: 459px;
    height: 55px;
    border-radius: 7px 7px 7px 7px;
    display: flex
;
    justify-content: space-between;
    padding: 11px;
    font-size: 23px;
     
     }
   
     
    
     
    .form_details {
     margin: 14px;
    box-shadow: 13px 9px 17px 7px;
    border-radius: 10px 10px 10px 12px;
     
     }
  
  
  .all_handaling{
        
      display: block;
    justify-items: center;
    align-items: center;
    margin-top:7rem;
        }
        
       .chlid_all_handaling {
           box-shadow: 1px 2px 4px 7px;
    padding: 13px;
    border-radius: 10px 10px 10px 10px;
    margin-top: 7rem;
    
    margin-bottom:3rem;
        
        }
        
        .input1{
        
        
        
        }
  
  
  </style>
  
</head>
<body>

<%@ include file="nav.jsp" %>

<c:set var="obj" value="${food}"/>
<div class="all_handaling mt-4 mb-3">	
<div class="chlid_all_handaling">
 
 <div class="bg-warning group_of_span ">
 <div class="">
      <span class="">Fill Food details </span>
  </div>
   <div class="">
       <a  href="/admin" class="btn btn-danger icon"> <span class="bi bi-x-lg"></span></a>
    </div>
  </div>
 

<form action="/Add/Food/details" method="post" enctype="multipart/form-data" >

 <input type="hidden"  name="f_id" value="${obj.f_id}">
  <input type="hidden"  name="quantity" value="${obj.quantity}">
 <div class="mt-4">
  <label for="FormControlInput1" class="form-label">Food Name</label>
  <input type="text" name="food_name" class="form-control div_group1" placeholder="Enter food name" id="FormControlInput1" value="${obj.food_name}">
 </div>
 <div class="mt-4">
   <label for="FormControlTextarea2" class="form-label">Discription:</label>
   <textarea rows="3" name="discription"  class="form-control " id="FormControlTextarea2" >${obj.discription}</textarea>
 </div>
 
 <div class="mt-4">
 <label for="FormControlInput3" class="form-label">Food price</label>
  <input type="text" name="price" class="form-control div_group1" placeholder="Enter food price" id="FormControlInput3" value="${obj.price}">
   
  </div>
  
   <div class="mt-4">
   <label for="FormControlInput4" class="form-label">Food Discount</label>
   <input type="text" name="discount" class="form-control div_group1" placeholder="Enter food discout" id="FormControlInput4" value="${obj.discount}">
  </div>
  <div class="mt-4">
   <div class="form-group">
                    <label for="category">Select Category</label>
                    <select class="form-control div_group1"  name="categoryId">
                        <option >---select categories----</option>

                       <c:forEach var="e" items="${categories}">
                       
                       <option value="${e.id} " ${e.id==obj.categoryId ? "select":""}>${e.name}</option>
                       </c:forEach>

                    </select>
     </div>
   </div>
   
   <div class="mt-4">
   <div class="form-group">
                    <label for="category">Select Resturrent</label>
                    <select class="form-control div_group1"  name="resturrentId">
                        <option >---select resturent----</option>

                       <c:forEach var="res" items="${resurent}">
                       
                       <option value="${res.id} " ${res.id==obj.resturrentId ? "select":""}>${res.rname}</option>
                       </c:forEach>

                    </select>
     </div>
   </div>
  
  
         <div class="mt-4">
                <p>Product Image</p>
                <div class="custom-file">
                    <input type="file"  class="custom-file-input div_group1" name="file" accept="image/jpeg, image/png,image/webp"  id="productImage" value="${obj.imageName}">
               </div>
               
                <input type="hidden" name="imageName" value="${obj.imageName}">
            </div>
            
            <div class ="mt-3 text-center">
            <input type="submit" value="sumbit" class="btn btn-warning me-2"style="width: 128px;
    height: 43px;">
              
              <a href="/admin" class="btn btn-danger me-2" style="width: 128px;
    height: 43px;">Close Form</a>
    
        <input type="reset" value="cancel" class="btn btn-primary" style="width: 128px;
    height: 43px;">
            
            </div>
            
        
 
    </form>
  </div>
</div>
</body>
</html>