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

<nav class="navbar navbar-expand-lg navbar-light fixed-top" style="margin: -9px;">
  <div class="container-fluid p-3 bg-warning text-primary ">
    <a class="navbar-brand " href="/">Multiple Resturant</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
    
       
    
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
       
          <li class="nav-item">
         <c:if test="${sessionScope.loggedIn == true and sessionScope.isAdmin == true}">
          <li class="nav-item">
            <a class="nav-link" href="/admin">Admin</a>
          </li>
        </c:if>
        </li> 
       
     
       <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
        Categories
    </a>
    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
        <c:forEach var="e" items="${categories}">
            <li><a class="dropdown-item" href="/update/category/${e.id}">${e.name}</a></li>
        </c:forEach>
      </ul>
      </li>
        
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">AboutUs</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">ContactUs</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/resurent/Add">Add Restaurant</a>
        </li>
        
      </ul>
       <ul class="navbar-nav me-4 mb-lg-0">
        <li class="nav-item">
             <c:if test="${sessionScope.loggedIn != true}">
          <li class="nav-item">
            <a class="nav-link " href="/Login">Login</a>
          </li>
        </c:if>        </li>
        
         <li class="nav-item">
         <c:if test="${sessionScope.loggedIn == true}">
          <li class="nav-item">
            <a class="nav-link" href="/logout">Logout</a>
          </li>
        </c:if>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/orderHistory">MyOrder</a>
        </li>
        
         <li class="nav-item">
          <a class="nav-link active " aria-current="page"  href="/cart/view"><i class="bi bi-cart4 "></i></a>
        </li>
   
            
        
      
        </ul>
    </div>
  </div>
</nav>

</body>
</html>