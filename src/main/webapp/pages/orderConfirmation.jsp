<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Confirmation</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
     .te{
        position: absolute;
        left: 42%;
        display: inline-block;
            font-style: italic;
            background: #355C7D;  
            background: -webkit-linear-gradient(to right, #C06C84, #6C5B7B, #355C7D);  
            background: linear-gradient(to right, #C06C84, #6C5B7B, #355C7D);
        }

        h3 {
            font-size: 18px;
            margin-top: 10px;
        }
        .text{
          text-align: center;
          color: white;
          font-weight: bold;
        }

       
        img {
            max-width: 100%;
            height: auto;
        }
     
     </style>
     
      <script>
      setTimeout(function() {
        window.location.href = "http://localhost:8080";
   }, 5000); 

  </script>
</head>
<body>
  
    <div class="container mt-5">
        <div class="te" >
            <img src="/images/placed_order.webp" alt="GIF Image" height="100px" width="350px"><br> 
            <h3 class="text">${message1}<br>${message2}</h3><br> 
            </div>
        
        <div class="text-center">
            <a href="/orders" class="btn btn-primary">View Your Orders</a>
        </div>
    </div>
</body>
</html>
