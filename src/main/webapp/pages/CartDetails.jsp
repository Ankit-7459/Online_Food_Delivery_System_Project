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
          
    </style>
</head>
<body>

 <%@ include file="nav.jsp" %>
 <div class="container">

        <section class="mt-5 mb-4">

            <div class="row" style="margin-top: 8rem;">
   
                
                <div class="col-lg-8" id="cartisEmpty">
                  
                  

                      <c:forEach var="obj" items="${cartItems}" varStatus="iStat">
                      
                        
                    <div class="card wish-list mb-4  ">
                        <div class="card-body">

                              <p ${sessionScope.userId}></p>
                              
                              
                              
                            <h5 class="mb-4">Cart (<span >${cartCount}</span> items)</h5>

                        
                            <div class="row mb-4">
                                <div class="col-md-5 col-lg-3 col-xl-3">
                                    <div class="mb-3 mb-md-0">
                                        <img class="img-fluid" src="/dynammicImages/${obj.imageName}"/>

                                    </div>
                                </div>
                                <div class="col-md-7 col-lg-9 col-xl-9">
                                    <div>
                                        <div class="d-flex justify-content-between">
                                            <div>
                                                <h5  > ${obj.foodName}</h5>

                                            </div>

                                           
                                        </div>
                                        <div class="mt-5 d-flex justify-content-between align-items-center">
                                            <div>
                                              <a href="<c:url value='/cart/removeItem/item/${obj.id}'/>"  type="button" class="card-link-secondary small text-uppercase mr-3"> <i
                                                        class="fas fa-trash-alt mr-1"></i> Remove item </a>

                                            </div>
                                            <p class="mb-0"><span><strong>₹<span >${obj.price}</span></strong></span></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr class="mb-4">

                            <p class="text-primary mb-0"><i class="fas fa-info-circle mr-1"></i> Do not delay the purchase, adding
                                items to your cart does not mean booking them.</p>
                             
                        </div>
                       
                       
                    </div>
              
                                </c:forEach>
                       
                </div>
                
               

                <!--Grid column-->
                <div class="col-lg-4">

                    <!-- Card -->
                    <div class="card mb-4">
                        <div class="card-body">

                            <h5 class="mb-3">The total amount </h5>

                            <ul class="list-group list-group-flush">
                                <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
                                    Amount Payable
                                    <span>₹<span >${total}</span></span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center px-0">
                                    Shipping
                                    <span>Gratis</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 mb-3">
                                    <div>
                                        <strong>The total amount of</strong>
                                        <strong>
                                           (including VAT)
                                        </strong>
                                    </div>
                                    <span><strong>₹<span >${total}</span></strong></span>
                                </li>
                            </ul>

                            <a href="/cart/checkout"  class="btn btn-primary btn-block waves-effect waves-light">go to
                                checkout</a>
                                
                              
                        </div>
                    </div>
                    <!-- Card -->

                    <!-- Card -->
                    <div class="card mb-4">
                        <div class="card-body">

                            <a class="dark-grey-text d-flex justify-content-between" data-toggle="collapse" href="#collapseExample"
                               aria-expanded="false" aria-controls="collapseExample">
                                Add a discount code (optional)
                                <span><i class="fas fa-chevron-down pt-1"></i></span>
                            </a>

                            <div class="collapse" id="collapseExample">
                                <div class="mt-3">
                                    <div class="md-form md-outline mb-0">
                                        <input type="text" id="discount-code" class="form-control font-weight-light"
                                               placeholder="Enter discount code">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                 

                </div>
               

            </div>
           
        </section>
      
        </div>

</body>
</html>
