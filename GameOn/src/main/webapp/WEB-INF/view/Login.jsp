					 			<!-- Header tab in normal include -->
					
					<%@ include file="Header.jsp" %>   
			
						 <%-- <!-- jstl core needed if we use jsp:include method -->
			
			<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			
									  <!-- Header Command -->
										
							<jsp:include page="Header.jsp" /> --%>
<html>
    <head>
		<title>Login/Register</title>  					 				
  					 				<!-- css Command -->
  					 				
  					 				   <!-- Header -->
		    
			 <link rel="stylesheet" href="<c:url value='/resource/mcss/Header.css'/>"/>
			 
			 						   <!-- Login  -->
			 						   
  			<link rel="stylesheet" href="<c:url value='/resource/mcss/Login.css' />" />
  			
  									  <!-- join  -->
			 						   
  		    <%-- <link rel="stylesheet" href="<c:url value='/resource/mcss/Join.css' />" /> --%>
 		
		</head>
		<body>
		
		<div class="well well-danger">${error }
												 ${logout }
												${registrationSuccess }</div>
												
		<p style="margin-top:120px; margin-left:90px;">
		<button type="button" class="btn btn-danger btn-lg" data-toggle="modal" data-target=".loginModal">Login</button>
						
											<!--LOGİN MODAL -->
												
			<div class="modal fade loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModal">
				<div class="modal-dialog modal-sm" role="document">
					
					<form class="login" action="<c:url value="j_spring_security_check"></c:url>" method="post">
					
						<div class="text-center"><img src="<c:url value='/resource/images/logo-kvadrat.png' />" alt="iLogo" style="width:100" /></div>
						<div class="form-group">

							<label for="inputUsername"></label>
							<input type="text" class="loginstyle" id="inputUsername" name="j_username" placeholder="Username" required="required" style="font-family:Harlow Solid, FontAwesome;color:red;">
						</div>
						<div class="form-group">
							<label for="inputPassword"></label>
							<input type="password" class="loginstyle" id="inputPassword" name="j_password" placeholder="Password" required="required" style="font-family:Harlow Solid, FontAwesome;color:red;">
						</div>
						
						<div class="text-center">
							<button type="submit" class="btn btn-danger btn-lg ">Login</button>
						</div>
					</form>
					
				</div>
			</div>		
											<!-- Signup Model -->
											
				<li><a href="<c:url value="/ev/customerForm"></c:url>" class="btn btn-danger btn-lg">Register Here!</a></li>
		
								
				<!-- Should not add the bootstrap.js here it will not allow the popu action -->
				
		</body>
	</html>
										<%-- 		<!-- Footer command -->
										
							<%@include file="Footer.jsp" %>    --%>