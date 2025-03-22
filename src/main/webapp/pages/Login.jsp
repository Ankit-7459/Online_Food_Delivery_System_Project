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
 
 body, html {
    height: 100%;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
   /* Optional: Light gray background */
}

.main {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 100%;
    height: 100vh; /* Ensures it takes full viewport height */
    margin-top:7rem;
}

.container {
    width: 526px;
    border: 1px solid yellow;
    box-shadow: 4px 13px 20px 8px rgba(0, 0, 0, 0.2); /* Added slight transparency */
    padding: 20px;
    border-radius: 10px;
    background: white;
    
   
}

   </style>
</head>
<body>

 <%@ include file="nav.jsp" %>
   <div class="main">
    <div  class="container">
	
	 <div class="text-center">
	 <div ><img alt="" src="/images/237-2374286_administrator-network-icons-system-avatar-computer-admin-icon.png" width="200px"
    height="200px" class="rounded-pill"></div>
	  <h1>Login</h1>
	 </div>
	
  <form action="/Login/admin/customer" method="post">
  
              <div>
				   <label for="FormControlInput3" class="form-label">Email</label>
				   <input type="email" class="form-control" id="FormControlInput3" name="email" placeholder="Enter a email"  required>
				</div>
				
				<div>
				 <label for="FormControlInput8" class="form-label">Password</label>
				 
				 <input type="password" class="form-control" id="FormControlInput8" name="password" placeholder=" Enter a Password " required>
				 
				<a  href="#"><label class="mt-3">Forget Password</label></a> 
				</div>
				
				 <div class=" mt-3 mb-3 text-center ">
	            <input type="submit" value="Login" class="btn btn-warning">       
	    </div>
	    
	    
  
  </form>
  
     <span >Don't have an account?<a class="linkControl" href="/ragister"
                                                >Register here</a></span>  
</div>

</div>
</body>
</html>