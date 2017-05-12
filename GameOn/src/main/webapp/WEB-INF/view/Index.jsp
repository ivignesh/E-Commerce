											<!-- Header tab in normal include -->
					
					<%@ include file="Header.jsp" %>  
			
							<%-- <!-- jstl core needed if we use jsp:include method -->
			
			<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			
									  <!-- Header Command -->
										
							<jsp:include page="Header.jsp" /> --%>
<html>
<head>
<title>GameOn!</title>
  
<style>
body {
        background-image: url("<c:url value='/resource/images/514-wallpaper.jpg'/>"); 
        background-size: cover;
        width: 100%;
        height: auto;
}  
</style>
</head>
<body>
																						 
	 <%-- <img src="<c:url value='/resource/images/514-wallpaper.jpg'/>" alt="ivignesh" style="width:100%;height:auto"/> --%>
							
<h1 style="color:white; margin-top:90px;text-align:center;">Hi Planet welcome to the world of Games</h1>
						
																												
  						<!-- Placed at the end of the document so the pages load faster -->
    
  				<script src="<c:url value='/resource/js/bootstrap.min.js' />" /></script>
						
</body>
</html>
						<%-- <!-- Footer tab Command -->
							 		
					<%@ include file="Footer.jsp" %> --%> 