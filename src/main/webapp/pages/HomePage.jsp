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
        margin:0px;
    }

  .sidebar {
            background-color: #f8f8f8;
            padding: 20px;
            border-radius: 10px;
            height: 100%;
        }

        .sidebar ul {
            list-style: none;
            padding: 0;
        }

        .sidebar ul li {
            padding: 10px;
            cursor: pointer;
            border-radius: 5px;
            transition: background 0.3s;
        }

        .sidebar ul li.active, 
        .sidebar ul li:hover {
            background: #ffcc00;
            font-weight: bold;
        }

        .card {
            transition: transform 0.3s;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .price {
            margin-top: 10px;
        }

        .current-price {
            font-weight: bold;
            color: green;
        }

        .old-price {
            text-decoration: line-through;
            color: red;
            margin-left: 8px;
        }

        .discount {
            color: blue;
            margin-left: 8px;
        }

</style>

</head>
<body>
<%@ include file="nav.jsp" %>
 <%@ include file="Banner.jsp"%>
 
        <div class="row">
          <div class="col-md-3">
          <div class="sidebar">
         <ul class="list-group">
           <li class="list-group-item  active"><a href="/">All Categories</a></li>
            <c:forEach var="e" items="${categories}">
                <li class="list-group-item text">
                    <a href="/update/category/${e.id}">
                        ${e.name}
                    </a>
                </li>
            </c:forEach>
        </ul>
     </div>
     </div>
    
    <div class="col-md-9">
        <div class="row">
             <c:forEach var="obj" items="${Food}">       
         <div class="col-md-4">
       
		             <div class="card ">
	                 <a href="/view/food/${obj.f_id}"><img src="dynammicImages/${obj.imageName}" class="card-img-top" alt="${obj.food_name}" ></a> 
					         <div class="card-body">
					          <h3 class="card-title">${obj.food_name}</h3>
					           <p class="card-text">${obj.discription}</p>
					               <div class="price">
								      <span>Rs.</span> <span class="current-price">${obj.price}</span>
								       <span class="discount">${obj.discount} % off</span>
								       <span class="old-price">₹300.0</span>
								    </div>
					           </div>
		                  </div>
                     </div>
                   </c:forEach>
               </div>
        </div>
       
  </div>
 
    <script src="../node_modules/jquery/dist/jquery.js"></script>

</body>
</html>
 
 