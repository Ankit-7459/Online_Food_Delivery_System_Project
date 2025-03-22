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
  
 <style type="text/css">
 
 
  
    
    
 
 </style>
  
</head>
<body>


<%@ include file="nav.jsp" %>
    
	<div  class="container">
	
	 <div class="text-center">
	
	  <h1>List Resturent</h1>
	
	  <table class="table table-bordered table-striped text-center" style="margin-top:7rem;">
	  <thead  class="table-dark">
	  
	  <tr>
	  <th>resturent_id</th>
	  <th>Restuarent name: </th>
	  <th>Location</th>
	  </tr>
	  
	  </thead>
	  
	  <tbody>
	  
	  <c:forEach var="res" items="${resurent}">
	  
	  <tr>
	  <td>${res.id}</td>
	  
	  <td>${res.rname}</td>
	  
	  <td>${res.location}</td>
	  
	  </tr>
	  </c:forEach>
	  
	  </tbody>
	  
	  </table>
	
	</div>
 </div>
</body>
</html>