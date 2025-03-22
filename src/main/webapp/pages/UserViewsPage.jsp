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
   table{
  
    width:"80%";
   
    
  }
  
  </style>
</head>
<body>
<%@ include file="nav.jsp" %>

<table class="table table-bordered table-striped text-center" style="margin-top:7rem;">

<thead class="table-dark">
   <tr>
         <th scope="col">id</th>  
        <th scope="col">first_name</th> 
        <th scope="col">last_name</th> 
         <th scope="col">email</th> 
         <th scope="col">mobile</th> 
         <th scope="col">Address</th> 
         <th>Action</th>
   </tr>
   <tbody>
   <c:forEach var="obj" items="${UserLogin}">
    
      <tr>
      
      <td scope="col">${obj.id}</td>
      <td scope="col">${obj.first_name}</td>
      <td scope="col">${obj.last_name}</td>
      <td scope="col">${obj.email}</td>
      <td scope="col">${obj.mobile}</td>
       <td scope="col"><span>${obj.streat}</span>
       <span>${obj.city}</span><span>${obj.pincode}</span>
       </td>
      
      <td><a href="/delete/user/${obj.id}">Delete</a>
      
      </tr>  
   
   </c:forEach>
</tbody>
</table>
</body>
</html>