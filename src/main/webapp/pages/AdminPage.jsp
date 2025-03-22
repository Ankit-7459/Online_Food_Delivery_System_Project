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
  
  
  
</head>
<body>

<%@ include file="nav.jsp" %>
  
<div class="row" style="margin-right: 100px;
    margin-top: 9rem;
    margin-left: 100px;
}">
                   
                   
					  <div class=" col-md-3" >
					    <div class="card" style="width: 12rem; border:1px solid yellow">
					     <a href ="/category">
					     <img class="card-img-top" src="images/4677490.png" alt="Card image cap"></a>
					     <p class ="text-center">click to add categories</p>
					     <h5 class="text-center">Add New  Categories</h5>
					    </div>
					  </div>
  
					  <div class="col-md-3">
					     <div class="card" style="width: 12rem; border:1px solid yellow">
					     <a href ="/totalCategories">
					    <img class="card-img-top" src="images/th (3).jpeg" alt="Card image cap"></a>
					     <p class ="text-center">click to add categories</p>
					     <h5 class ="text-center">Total Categories </h5>
					     
					      </div>
					      
					    </div>  
    
						     <div class=" col-md-3">
						     <div class="card" style="width: 12rem; border:1px solid yellow">
						     <a href ="/ShowAllFoods">
						     <img class="card-img-top" src="images/th (2).jpeg" alt="Card image cap"></a>
						      <p class ="text-center">click to find</p>
						     <h5 class ="text-center">Total Product foods</h5>
						    
						      </div>
						      </div>
      
						   <div class="col-md-3">
						     <div class="card" style="width: 12rem; border:1px solid yellow">
						     <a href ="/Add/Food">
						    <img class="card-img-top pt-5" src="images/th (4).jpeg" alt="Card image cap"></a>
						     
						     <p class ="text-center pt-3"> click to add  foods</p>
						     <h5 class ="text-center"> Add New Food</h5>
						      </div>
						      
						    </div>  
						    
						     <div class="col-md-3">
						     <div class="card" style="width: 12rem; border:1px solid yellow">
						     <a href ="/find/User">
						    <img class="card-img-top pt-5" src="images/usericon.jpeg" alt="Card image cap"></a>
						     
						     <p class ="text-center pt-3">Find by All User</p>
						     <h5 class ="text-center"> Total User</h5>
						      </div>
						      
						    </div>  
						    
						    <div class="col-md-3">
						     <div class="card" style="width: 12rem; border:1px solid yellow">
						     <a href ="/Admin/orders">
						    <img class="card-img-top pt-5" src="images/order-icon-18.jpg" alt="Card image cap"></a>
						     
						     <p class ="text-center pt-3"> click to check Order</p>
						     <p class ="text-center"> Total Order</p>
						      </div>
						      
						    </div>
						    
						    <div class="col-md-3">
						     <div class="card" style="width: 12rem; border:1px solid yellow">
						     <a href ="/resurent/Add">
						    <img class="card-img-top pt-5" src="images/restaurant-icon-concept-with-icon-design_24911-17835.avif" alt="Card image cap"></a>
						     
						     <p class ="text-center pt-3"> click to Add Resturent</p>
						     <p class ="text-center"> Total Order</p>
						      </div>
						      
						    </div>  
						    
						     <div class="col-md-3 mt-4">
						     <div class="card" style="width: 12rem; border:1px solid yellow ">
						     <a href ="/resurent">
						    <img class="card-img-top pt-5" src="images/Restaurant-Le-Meurice-Paris-Alamy.webp" alt="Card image cap"></a>
						     
						     <p class ="text-center pt-3"> click to check Resturent_List</p>
						     <p class ="text-center"> Total Resturent</p>
						      </div>
						      
						    </div>      
						    
						    
 </div> 
 
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>