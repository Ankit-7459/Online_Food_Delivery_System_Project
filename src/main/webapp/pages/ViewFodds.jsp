<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Food Details</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    
    <style>
    
         .container{
          margin-top: 7rem;
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

        img {
           width: 344px;
    height: 400px;
    border-radius: 10px;
        }
         body{
        background-color:rgb(255, 235, 205);
    }
    </style>
</head>
<body>

<%@ include file="nav.jsp" %>
<c:set var="obj" value="${Food}" />

<div class="container ">
    <div class="row">
        <div class="col-md-5">
            <div>
                <img src="/dynammicImages/${obj.imageName}" alt="">
            </div>
            
            <div class="mt-5 ">
              
             <label for="quantity"><b>Quantity:</b></label>
              <input type="number" id="quantity" name="quantity" value="1" min="1" class="form-control" style="width: 100px; display: inline-block;">
            
		       <a id="addToCartBtn" href="/cart/add/${obj.f_id}?quantity=1" 
		       class="btn btn-warning" style="width:32%; padding:15px; font-size:18px; color:white;">
		       <span class="bi bi-cart-check-fill pe-3"></span>GO TO CART
		        </a>
</div>

        </div>
        <div class="col-md-7">
            <h1>${obj.food_name}</h1>
            <p>${obj.discription}</p>
            <div class="price">
            
                <b>Price.</b><span class="current-price">${obj.price}</span>
                <span class="discount"> Discount :${obj.discount}%</span>
                  <b>Old Price.</b> <span class="old-price">300.06</span>
            </div>
            
             <div style="font-size:20px">
            <ul class="pt-3">
	            <li class=>Bank Offer5% Cashback on Axis Bank CardT&C</li>
	
	            <li class="pt-4">Bank OfferGet ₹25* instant discount for the 1st Order using this mart UPIT&C</li>

	            <li class="pt-4">Special PriceGet extra ₹5000 off (price inclusive of cashback/coupon)T&C</li>    
            </ul>
             </div>
        </div>
    </div>
</div>


<script>
    document.getElementById("quantity").addEventListener("input", function() {
        let quantity = this.value;
        let addToCartBtn = document.getElementById("addToCartBtn");
        addToCartBtn.href = "/cart/add/${obj.f_id}?quantity=" + quantity;
    });
</script>
</body>
</html>

 <%--  <img class="img-fluid" src="<c:url value='/dynamicImages/${obj.imageName}'/>"/> --%>
