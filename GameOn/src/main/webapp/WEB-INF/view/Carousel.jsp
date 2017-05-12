									<!-- Header tab in normal include -->
					
					<%@ include file="Header.jsp" %>  
			
							<%-- <!-- jstl core needed if we use jsp:include method -->
			
			<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			
									  <!-- Header Command -->
										
							<jsp:include page="Header.jsp" /> --%>
<html>
<head>
<title>Welcome</title>									
  									<!-- Carousel css -->
  									
  <link rel="stylesheet" href="<c:url value='/resource/mcss/Carsoal.css/' /> "/>
  
</head>
<body>
												
<div class="container-fluid-full">
<br>
<div id="carousel" class="carousel slide carousel-fade" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carousel" data-slide-to="0" class="active"></li>
        <li data-target="#carousel" data-slide-to="1"></li>
        <li data-target="#carousel" data-slide-to="2"></li>
        <li data-target="#carousel" data-slide-to="3"></li>
    </ol>
    
   									 <!-- Carousel items -->
   								 
    <div class="carousel-inner carousel-zoom">
        <div class="active item"><img class="img-responsive" src="<c:url value='/resource/images/joystick_sony_playstation_game_30902_1366x768.jpg'/>" alt="first" style="width:1280px;height:550px"/>
        </div>
        <div class="item"><img class="img-responsive" src="<c:url value='/resource/images/i_am_a_gamer_by_thenons3nse-d5aomlw.png'/>" alt="second" style="width:1280px;height:550px"/>
        </div>
        <div class="item"><img class="img-responsive" src="<c:url value='/resource/images/IMG_260382.jpg'/>" alt="third" style="width:1280px;height:550px"/>
        </div>
        <div class="item"><img class="img-responsive" src="<c:url value='/resource/images/video-game.jpg'/>" alt="fourth" style="width:1280px;height:550px"/>
        </div>
       </div>
    							 	<!-- Carousel nav -->
    							 
    <a class="carousel-control left"  href="#carousel" data-slide="prev"></a>
    <a class="carousel-control right"  href="#carousel" data-slide="next"></a>
</div>
</div>
		<!-- Placed at the end of the document so the pages load faster and dropdown works when its plaed at bottom -->
  
  		<script src="<c:url value='/resource/js/bootstrap.min.js' />" /></script>
  		
</body>
</html>
						<%-- <!-- Footer cmd in normal -->
								
				<%@ include file="Footer.jsp" %> --%>
									
						<%-- <!-- Footer command -->
						
				<jsp:include page="Footer.jsp" /> --%>