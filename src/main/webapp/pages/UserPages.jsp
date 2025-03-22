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
 
 
  .container{
    width: 452px;
    border-color: blueviolet;
    border: 1px solid yellow;
    box-shadow: 4px 13px 20px 8px;
    margin: 1rem;
    padding: 15px;
    border-radius: 10px 10px 10px 10px;
    margin-top: 6rem;
    }
    
    
 
 </style>
  
</head>
<body>

<%@ include file="nav.jsp" %>
    
	<div  class="container">
	
	 <div class="text-center">
	 <div ><img alt="" src="/images/237-2374286_administrator-network-icons-system-avatar-computer-admin-icon.png" width="233px" height="206px" class="rounded-pill"></div>
	  <h1>Register Admin </h1>
	 </div>
	
	<form action="/save/user" method="post">
	       <input type="hidden" name="id"/>
				<div>
				   <label for="FormControlInput1" class="form-label">First Name </label>
				     <input type="text" class="form-control" name="first_name" id="FormControlInput1" placeholder="Enter a First Name" required>
				</div>
				<div>
				   <label for="FormControlInput2" class="form-label">Last Name</label>
				   <input type="text"  class="form-control"  id="FormControlInput2" name="last_name" placeholder="Enter a last Name" required>
				</div>
				<div>
				   <label for="FormControlInput3" class="form-label">Email</label>
				   <input type="email" class="form-control" id="FormControlInput3" name="email" placeholder="Enter a email" required>
				</div>
				<div>
				  <label for="FormControlInput4" class="form-label">Mobile</label>
				  <input type="text" class="form-control" id="FormControlInput4" name="mobile" placeholder="Enter a mobile" required>
				</div>
				<div>
				  <label for="FormControlInput5" class="form-label">Streat</label>
				   <input type="text" class="form-control" id="FormControlInput5" name="streat" placeholder="Enter a streat" required>
				</div>
				<div>
				 <label for="FormControlInput6" class="form-label">city</label>
				 <input type="text" class="form-control" id="FormControlInput6" name="city" placeholder="Enter a City" required>
				</div>
				<div>
				 <label for="FormControlInput7" class="form-label">Pincode</label>
				 <input type="number" class="form-control" id="FormControlInput7" name="pincode" placeholder="Enter a Pincode" required>
				</div>
				<div>
				 <label for="FormControlInput8" class="form-label">Password</label>
				 
				 <input type="password" class="form-control" id="FormControlInput8" name="password" placeholder=" Enter a Password " required>
				</div>
	     <div class=" mt-3 mb-3 text-center ">
	     <input type="submit" value="Ragister" class="btn btn-warning">
	    </div>

	</form>
	
	<span>If already account have <a href="/Login"> SignIn</a></span>
 </div>
</body>
</html>