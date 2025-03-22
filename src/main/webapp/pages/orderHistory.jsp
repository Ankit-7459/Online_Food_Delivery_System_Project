<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order History</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
    .container{
    
         margin-top:7rem;
    
    }
      
    
    </style>
</head>
<body>
    <%@ include file="nav.jsp" %>
    <div class="container ">
        <h2 >Your Orders</h2>
        
        <c:choose>
            <c:when test="${empty orders}">
                <p class="text-danger">No orders found.</p>
            </c:when>
            <c:otherwise>
                <table class="table table-bordered table-striped text-center">
                    <thead class="table-dark p-2">

                        <tr>
                            <th>Order ID</th>
                            <th>User name</th>
                            <th>User Email</th>
                            <th>User Phone</th>
                            <th>Food Image</th>
                            <th>Food Name</th>
                            <th>Resturant</th>
                            <th>Food Price</th>
                            <th>Date</th>
                            <th>Delivery Date</th>
                             <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                     <c:forEach var="order" items="${orders}">
                            <c:forEach var="item" items="${order.orderItems}">
                                <tr>
                                    <td>${order.orderid}</td>
                                    <td>${order.userName}</td>
                                    <td>${order.userEmail}</td>
                                    <td>${order.userPhone}</td>
                                    <td><img src="/dynammicImages/${item.imageName}" width="50"></td>
                                    <td>${item.foodName}</td>
                                     <td>${item.resturentName}</td>
                                    <td>${item.price}</td>
                                    <td>${order.orderDate}</td>
                                    <td>${order.deliveryDate}</td>
                                    <td>${order.deliveryStatus}</td>
                                </tr>
                            </c:forEach>
                        </c:forEach>
                    </tbody>
                </table>
            </c:otherwise>
        </c:choose>

        <a href="/" class="btn btn-secondary">Back to Home</a>
    </div>
</body>
</html>
