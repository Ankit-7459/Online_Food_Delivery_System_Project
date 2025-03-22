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
  
  <style>
  
   .container{ 
    margin-top: 7rem;
     }
  </style>
  
</head>
<body>

  <%@ include file="nav.jsp" %>

    <div class="container" >

    <a href="/admin" style="margin: 20px 0" class="btn btn-primary">AdminHome</a>
    <table class="table table-bordered table-striped text-center" >
        <thead class="table-dark">
        <tr>
            <th scope="col">id</th>
            <th scope="col">Category Name</th>
              <th scope="col">discription</th>
            <th scope="col">Update</th>
             <th scope="col">Delete</th>
        </tr>
        </thead>
        <tbody>

        <c:forEach var="cate" items="${categries}">
        
          <tr>
         
         <td>
              ${cate.id} 
         </td>
         
          <td>
              ${cate.name} 
         </td>
         
           <td>
              ${cate.discription} 
         </td>
          
          <td><a href="update/categaries/${cate.id}" class="btn btn-warning btn-sm">Edit</a></td>
            <td><a href="<c:url value='/delete/categaries/${cate.id}'/>" class="btn btn-danger btn-sm">Delete</a></td>
        
          </tr>
          
           </c:forEach>
        </tbody>
         
    </table>
</div>
    

</body>
</html>