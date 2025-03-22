<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order History</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
  
</head>
<body>
    <%@ include file="nav.jsp" %>
    <div class="container mt-5">
        <h2>Your Orders</h2>

        <c:choose>
            <c:when test="${empty orders}">
                <p class="text-danger">No orders found.</p>
            </c:when>
            <c:otherwise>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Order ID</th>
                            <th>Food Name</th>
                            <th>Status</th>
                            <th>Date</th>
                            <th>Delivery Date</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="order" items="${orders}">
                            <tr>
                                <td>${order.orderId}</td>
                                <td>${order.foodDetails.food_name}</td>
                                <td>${order.status}</td>
                                <td>${order.date}</td>
                                <td>${order.deliveryDate}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:otherwise>
        </c:choose>

        <a href="/" class="btn btn-secondary">Back to Home</a>
    </div>
</body>
</html>
