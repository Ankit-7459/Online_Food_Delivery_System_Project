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
  
  table{
    
     width:90%;
     
     border:1px solid;
  
  }
  
  </style>
  
</head>
<body>	

  <%@ include file="nav.jsp" %>
    
	<table class="table table-bordered table-striped text-center" style="margin-top:7rem;">
      <thead class="table-dark">
	<tr>
	
	<th scope="col">F_id</th>
	
	<th scope="col">Food_name</th>
	
	<th scope="col">discription</th>
	
	<th scope="col">price</th>
	
	<th scope="col">discount</th>
	
	<th scope="col">category</th>
	
	<th scope="col">imageName</th>
	
	<th scope="col">Edit</th>
	
	<th scope="col">Delete</th>
	
	</tr>
  </thead>
  
  <tbody>
	<c:forEach var="f" items="${FoodDetails}">
	
	<tr align="center">
	  <td scope="col">${f.f_id}</td>
	
	 <td scope="col">${f.food_name}</td>
	 
	  <td scope="col">${f.discription}</td>
	 
	 <td scope="col">${f.price}</td>
	 
	 <td scope="col">${f.discount}</td>
	 
	<td scope="col">${f.category.name}</td>
	

	 
	 <td scope="col"><img src="/dynammicImages/${f.imageName}" style="width: 94px; height: 51px;"/></td>
	 
	 <td scope="col"><a href="update/food/details/${f.f_id}" class="btn btn-warning btn-sm">Edit</a></td>
     <td scope="col"><a href="<c:url value='/delete/food/details/${f.f_id}'/>" class="btn btn-danger btn-sm">Delete</a></td>
        
	 
	 </tr>
	 
	</c:forEach>
	</tbody>
	</table>
</body>
</html>