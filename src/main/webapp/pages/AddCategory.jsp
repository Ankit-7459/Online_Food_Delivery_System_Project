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
    
    .mar{
           margin-left: 250px;
           margin-right: 250px;
    
    }
    
    .div_group1{
    
          width: 462px;
          height: 55px;
              
        }
        
        .div_group2{
        
        height: 238px;
         width: 463px;
              
        
        
        }
        .icon{
        
          font-size: 81px;
    
           color: yellow;  
        }
        
     .cate_design  {
        
     display: block;
    justify-items: center;
    align-items: center;
    
    margin-top:7rem;
        }
  
     .cancel_form{
     
           
     }
     .group_of_span{
     
     width: 459px;
    height: 55px;
    border-radius: 7px 7px 7px 7px;
     
     }
     .span_group1{
     
     position: relative;
     top: 12px;
     
     }
     
      .span_group2{
     
     position: relative;
     top: 12px;
     
     }
     
    .form_details {
     margin: 14px;
    box-shadow: 13px 9px 17px 7px;
    border-radius: 10px 10px 10px 12px;
     
     }
  
  </style>
</head>
<body>

<%@ include file="nav.jsp" %>

 <div class=" cate_design">
 
 <c:set var="obj" value="${cust}" />
 
 <form action="/addCategories" method="post" class="form_details" >
 
 <div style="padding: 17px;">
  <div class="bg-warning group_of_span">
 
   <span class="span_group1 ms-2">fill Categories details </span>
 
   
   </div>
 
  <div class="mb-3 ">
  
  <input type="hidden" name="id" value="${obj.id}">
  <label for="exampleFormControlInput1" class="form-label">Categories Name</label>
  
  <input type="text" class="form-control div_group1" id="exampleFormControlInput1" placeholder="Eneter a Categories" name="name" value="${obj.name}">
</div>
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">Discription:</label>
  <textarea class="form-control div_group2" id="exampleFormControlTextarea1" rows="3" name="discription" value="${obj.discription}"></textarea>
</div>

<div>
 
   <input type="submit" value="sumbit" class="btn btn-warning">
  
 </div>
 </div>
 </form>
 </div> 
 
</body>
</html>