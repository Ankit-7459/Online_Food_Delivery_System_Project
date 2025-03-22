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
 
  body{
  
     display: flex;
    justify-content: center;
    align-items: center;
  
  }
  .container{
  
    width: 526px;
    border: 1px solid yellow;
    box-shadow: 4px 13px 20px 8px;
    margin: 1rem;
    padding: 15px;
    border-radius: 10px 10px 10px 10px;
    
      margin-top: 7rem;
    }
    
    
 
 </style>
  
</head>
<body>


<%@ include file="nav.jsp" %>
    
	<div  class="container">
	
	 <div class="text-center">
	
	  <h1>Add Resturent</h1>
	
	<form action="/resurent/Add" method="post">
	       <input type="hidden" name="id"/>
				<div>
				   <label for="FormControlInput1" class="form-label">Restuarent Name: </label>
				     <input type="text" class="form-control" name="Rname" id="FormControlInput1" placeholder="Enter a Resturant Name" required>
				</div>
				<div>
				   <label for="FormControlInput2" class="form-label">Location</label>
				   <input type="text"  class="form-control"  id="FormControlInput2" name="location" placeholder="Enter a Location" required>
				</div>
				
	     <div class=" mt-3 mb-3 text-center ">
	     <input type="submit" value="Sumbit"class="btn btn-warning">
	    </div>

	</form>
	
	</div>
 </div>
</body>
</html>