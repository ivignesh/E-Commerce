<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/view/Header.jsp" %>
<%@page isELIgnored="false" %>

<html>
<head>
<title>Collect Customer</title>
</head>
<body>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Cutomer</h1>


            <p class="lead">Customer Details:</p>
        </div>

        <form:form commandName="order" class="form-horizontal">

        <h3>Basic Info:</h3>

        <div class="form-group">
            <label for="name">First Name</label>
            <form:input path="cart.customer.firstname" id="firstname" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="name">Last Name</label>
            <form:input path="cart.customer.lastname" id="lastname" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <form:input path="cart.customer.email" id="email" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="phone">Phone</label>
            <form:input path="cart.customer.phoneno" id="phone" class="form-Control" />
        </div>

        <br/>

        <h3>Billing Address:</h3>

        <div class="form-group">
            <label for="billingStreet">Street Name</label>
            <form:input path="cart.customer.billingAddress.StreetName" id="billingStreet" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingApartmentNumber">Apartment Number</label>
            <form:input path="cart.customer.billingAddress.ApartmentNo" id="billingApartmentNumber" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingCity">City</label>
            <form:input path="cart.customer.billingAddress.City" id="billingCity" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingState">State</label>
            <form:input path="cart.customer.billingAddress.State" id="billingState" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingCountry">Country</label>
            <form:input path="cart.customer.billingAddress.Country" id="billingCountry" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingZip">Zipcode</label>
            <form:input path="cart.customer.billingAddress.Pincode" id="billingZip" class="form-Control" />
        </div>

        <input type="hidden" name="_flowExecutionKey" />

        <br/><br/>

        <input type="submit" value="Next" class="btn btn-success" name="_eventId_customerInfoCollected" />

        <button class="btn btn-danger" name="_eventId_cancel">Cancel</button>

        </form:form>
      </div>
    </div>

<%-- <%@ include file="/WEB-INF/view/Footer.jsp" %> --%>

</body>
</html>