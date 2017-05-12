<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@page isELIgnored="false" %>				<!-- Without using this the page path garbage value -->

<html>
<head>	    						
										<!-- Bootstrap Command -->										
  
  			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
 			<link rel="stylesheet" href="<c:url value='/resource/css/bootstrap.min.css'/>" />
    
		    							<!-- Header css Command -->
		    
			 <link rel="stylesheet" href="<c:url value='/resource/mcss/Header.css'/>"/>
			 
			 							<!-- Angular js cmd -->
  										
  			 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
  			
</head>
<body>
									<!-- Navigation Header Bar -->
									
										<!-- Begin Navbar -->

<div id="nav">
  <div class="navbar navbar-inverse navbar-fixed-top" data-spy="affix" data-offset-top="100">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          
          <c:url var="i" value="/Index"></c:url>
          <a class="navbar-brand" href="${i }"><img class="img-responsive logo" src="<c:url value='/resource/images/ilogo.png' />" alt="Logo" style="width:120px;height:70px" /></a>
          </div>
          
        <div id="navbar" class="collapse navbar-collapse">

           <ul class="nav navbar-nav navbar-left">
            <c:url var="c" value="/Carousel"></c:url>
            <li><a href="${c }">Home</a> </li>
            
            <c:url var="a" value="/About"></c:url>
            <li><a href="${a }">About</a> </li>
            
            <%-- <c:url var="A" value="/Angular"></c:url>
            <li><a href="${A }">JS</a> </li> --%>
                        
            <c:if test="${pageContext.request.userPrincipal.name!=null }">
            
            <c:url var="ul" value="/admin/product/productform"></c:url>
            <security:authorize access="hasRole('ROLE_ADMIN')">
            <li><a href="${ul }">Add Product</a></li>
            </security:authorize>
            
            <!-- <li><a href="admin/product/productform">Products</a></li> -->
            
            <c:url var="allProducts" value="/all/product/getAllProducts"></c:url>
            <li><a href="${allProducts }">Browse all products</a></li>
            
            <!-- <li><a href="/all/product/getAllProducts">Browse all products</a></li> -->
                        
            <li class="dropdown"><a href="" class="dropdown-toggle" data-toggle="dropdown">Game Categories<span class="caret"></span></a>
              <ul class="dropdown-menu">
                  		     
       		     <c:url var="url1" value="/all/product/productsByCategory?searchCondition=Action"></c:url>
       		     <li><a href="${url1 }">Action</a></li>
       		     
       		     <c:url var="url2" value="/all/product/productsByCategory?searchCondition=Racing"></c:url>
       		     <li><a href="${url2 }">Racing</a></li>
       		     
       		     <c:url var="url_3" value="/all/product/productsByCategory?searchCondition=Sports"></c:url>
       		     <li><a href="${url_3 }">Sports</a></li>
       		     
       		     <c:url var="url_4" value="/all/product/productsByCategory?searchCondition=Adventure"></c:url>
       		     <li><a href="${url_4 }">Adventure</a></li>
      	       </ul>
            </li>
           
            <li class="dropdown"><a herf="" class="dropdown-toggle" data-toggle="dropdown">Hi ${pageContext.request.userPrincipal.name}<span class="caret"></span></a>
               <ul class="dropdown-menu"> 
            		
            		<!-- <li><a href="#">Account</a></li>
            		<li><a href="#">Profile</a></li> -->
            		
            		<c:if test="${pageContext.request.userPrincipal.name!=null }">
					<li><a href="<c:url value="/cart/getCartId"></c:url>"><span class="glyphicons glyphicons-shopping-cart"></span>Cart</a></li>
					<li><a href="<c:url value="/j_spring_security_logout"></c:url>">Log out</a></li>
					</c:if>       
               </ul> 
            </li>
            </c:if>
           </ul> 
          
          <ul class="nav navbar-nav navbar-right">
          	<c:if test="${pageContext.request.userPrincipal.name==null }">
            
            <c:url var="l" value="/Login"></c:url>
            <li><a href="${l }"><span class="glyphicon glyphicon-log-in"></span> Login/Register</a></li>
           						
			</c:if>
	       
          </ul>
        </div>
        <!--/.nav-collapse -->
      </div>
      <!--/.contatiner -->
</div> 
</div>
    						<!-- we have to keep the js cmd then only drop down works-->
   						
   					<script src="<c:url value='/resource/js/bootstrap.min.js'/>" /></script>
</body>
</html>