											<!-- Header tab in normal include -->
					
					<%@ include file="Header.jsp" %>  
			
							<%-- <!-- jstl core needed if we use jsp:include method -->
			
			<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			
									  <!-- Header Command -->
										
							<jsp:include page="Header.jsp" /> --%>
<html>
<head>
<title>Product list</title>
</head>
<body style="margin-top:90px; ">

<div style="font-family:Lucida Calligraphy; color: #6600cc; font-size: 30px; text-align:center;">Product list</div>

	<div class="container">

		 <table class="table table-striped">
			<thead>
				<tr bgcolor="#ff9966"> 
					<th style="color:blue;">Image</th>
					<th style="color:red;">Product Name</th>
					<th style="color:yellow;">Description</th>
					<th style="color:blue;">Category</th>
					
					<security:authorize access="hasRole('ROLE_ADMIN')">
					<th style="color:green;">View/Delete/Edit</th>
					</security:authorize>
					
					<security:authorize access="hasRole('ROLE_USER')">
					<th style="color:red;">View</th>
					</security:authorize>
					
				</tr>
			</thead>
			<c:forEach var="p" items="${productList}">

				<tr>
					<td><c:url var="src" value="/resource/images/${p.id }.jpg"></c:url>
					<img src="${src }" alt="test images" style="width:250px;height:300px"/>
					</td>
					
					<td><c:out value="${p.name}"/></td>
					<td><c:out value="${p.description }"/></td>
					<td><c:out value="${p.category.categoryDetails}"/></td>
					
					<td>
										
					<c:url var="url" value="/all/product/viewproduct/${p.id}"></c:url>
					<a href="${url }"><span class="glyphicon glyphicon-info-sign"></span></a>
					 
					 <security:authorize access="hasRole('ROLE_ADMIN')">
					 
					<c:url var="delete" value="/admin/product/deleteproduct/${p.id }"></c:url>
					<a href="${delete }"><span class="glyphicon glyphicon-remove"></span></a>
					
					<c:url var="edit" value="/admin/product/editform/${p.id}"></c:url>
					<a href="${edit }"><span class="glyphicon glyphicon-pencil"></span></a>
					
					</security:authorize>
									
				    </td>
				</tr>
			</c:forEach>
		</table>

	</div>
								<!--Script tag for JS  -->
							
	 <script src="<c:url value='/resource/js/controller.js'></c:url>"></script>
  
</body>
</html>
								<%-- 	<!-- Footer tab in normal include -->
					
					<%@ include file="Footer.jsp" %>  --%>

















<%-- 
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<div style="color: teal; font-size: 30px">Being Java Guys | User
   Details</div>

  <c:if test="${!empty productList}">
   <table border="1" bgcolor="black" width="600px">
    <tr
     style="background-color: teal; color: white; text-align: center;"
     height="40px">
     
     <td>Product Id</td>
     <td>Product Name</td>
   <td>Product Description</td>
   <td>Product Price</td>
   
     <td>Edit</td>
     <td>Delete</td>
    </tr>
    <c:forEach items="${productList}" var="pd">
     <tr
      style="background-color: white; color: black; text-align: center;"
      height="30px">
      
      <td><c:out value="${pd.productid}" />
      </td>
      <td><c:out value="${pd.name}" />
      </td>
      <td><c:out value="${pd.description}" />
      </td>
      <td><c:out value="${pd.price}" />
      </td>
      <td><a href="editProduct?id=${pd.productid}">Edit</a></td>
      <td><a href="deleteProduct?id=${pd.productid}">Delete</a></td>
     </tr>
    </c:forEach>
   </table>
  </c:if>
  <a href="ProductForm">add new product</a>
</center>
</body>
</html> --%>