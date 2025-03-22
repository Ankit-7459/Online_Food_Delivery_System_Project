<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Order Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
    .container {
        margin-top: 7rem;
    }
    img {
        width: 50px;
        height: 50px;
        object-fit: cover;
        border-radius: 5px;
    }
    </style>
</head>
<body>
    <%@ include file="nav.jsp" %>

    <div class="container">
        <h2 class="mb-4">Admin Order Management</h2>

        <c:choose>
            <c:when test="${empty orders}">
                <p class="text-danger">No orders found.</p>
            </c:when>
            <c:otherwise>
                <table class="table table-bordered table-striped text-center">
                    <thead class="table-dark p-2">
                        <tr>
                            <th>Order ID</th>
                            <th>User ID</th>
                            <th>User Name</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Food Image</th>
                            <th>Food Name</th>
                            <th>Price</th>
                            <th>Order Date</th>
                            <th>Delivery Date</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="order" items="${orders}">
                            <c:forEach var="item" items="${order.orderItems}">
                                <tr>
                                    <td>${order.orderid}</td>
                                    <td>${order.userId}</td>
                                    <td>${order.userName}</td>
                                    <td>${order.userEmail}</td>
                                    <td>${order.userPhone}</td>
                                    <td><img src="/dynammicImages/${item.imageName}" width="50"></td>
                                    <td>${item.foodName}</td>
                                    <td>${item.price}</td>
                                    <td>${order.orderDate}</td>
                                    
                                    <td colspan="3">
                                        <form action="/Admin/orders/update/${order.orderid}" method="post" class="d-flex justify-content-center align-items-center">
                                            <input type="date" name="deliveryDate" value="${order.deliveryDate}" class="form-control me-2" required>
                                            
                                            <select name="status" class="form-select  ">
                                                <option  value="Pending" ${order.deliveryStatus == 'Pending' ? 'selected' : ''}>Pending</option>
                                                <option value="Shipped" ${order.deliveryStatus == 'Shipped' ? 'selected' : ''}>Shipped</option>
                                                <option value="Delivered" ${order.deliveryStatus == 'Delivered' ? 'selected' : ''}>Delivered</option>
                                            </select>

                                            <button type="submit" class="btn btn-primary btn-sm ">Update</button>
                                            
                                           
                                        </form>
                                       
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:forEach>
                    </tbody>
                </table>
            </c:otherwise>
        </c:choose>
    </div>
</body>
</html>
