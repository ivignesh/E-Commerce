							  
							<!-- Header tab in normal include -->
					
					<%@ include file="Header.jsp" %>  
			
							<%-- <!-- jstl core needed if we use jsp:include method -->
			
			<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			
									  <!-- Header Command -->
										
							<jsp:include page="Header.jsp" /> --%>
							  
<html>
<head>
<title>About Us</title>  
</head>
<body>
										
  <img src="<c:url value='/resource/images/i_am_a_gamer_by_thenons3nse-d5aomlw.png' />" alt="ivignesh" style="width:100%;height:auto"/>
																				
	   		<!-- Placed at the end of the document so the pages load faster and dropdown works when its plaed at bottom -->
  
  		 <script src="<c:url value='/resource/js/bootstrap.min.js'/>" /></script>  
  										
</body>
</html>
					<%-- 				<!-- Footer tab in normal include -->
					
					<%@ include file="Footer.jsp" %>   --%>
					
								<%--  <!-- Footer tab Command -->
							 		
					<jsp:include page="Footer.jsp" /> --%>
									
