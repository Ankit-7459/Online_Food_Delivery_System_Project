<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
 <div class="carousel slide carousel-dark " id="banners" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active" data-bs-interval="3000">
                <img style="height:420px;" src="images/banner1.jpeg" class="w-100"  >
            </div>
            <div class="carousel-item" data-bs-interval="1000">
                <img style="height:420px;" src="images/banner2.jpeg" class="w-100">
            </div>
             <div class="carousel-item" data-bs-interval="1000">
                <img  style="height:420px;" src="images/food-delivery-service-web-banner-motorcycle-space-your-text-green-background-180763322.webp" class="w-100">
            </div>
            <div class="carousel-item" data-bs-interval="4000">
                <img style="height:420px;" src="images/banner4.jpeg" class="w-100">
            </div>
        </div>
        <button class="carousel-control-prev" data-bs-slide="prev" data-bs-target="#banners">
            <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" data-bs-slide="next" data-bs-target="#banners">
            <span class="carousel-control-next-icon"></span>
        </button>
        <div class="carousel-indicators">
            <button class="active" data-bs-slide-to="0" data-bs-target="#banners"></button>
            <button data-bs-slide-to="1" data-bs-target="#banners"></button>
            <button data-bs-slide-to="2" data-bs-target="#banners"></button>
            <button data-bs-slide-to="3" data-bs-target="#banners"></button>
        </div>
    </div>
   
</body>
</html>