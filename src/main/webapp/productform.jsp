<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>

    <title>Spring Framework Guru</title>
<jsp:include page="fragments/headerinc.jsp"/>
    
</head>
<body>
<div class="container">
    <jsp:include page="fragments/header.jsp"/>
    <h2>Product Details</h2>
    <div>
        <form:form class="form-horizontal" action="/product" modelAttribute="product" method="post">

				<form:input type="hidden" path="id" autofocus="true"></form:input>
				<form:input type="hidden" path="version" autofocus="true"></form:input>

				<spring:bind path="productId">
				<div class="form-group ${status.error ? 'has-error' : ''}">
                <label class="col-sm-2 control-label">Product Id:</label>
                <div class="col-sm-10">
                    <form:input type="text" path="productId" class="form-control" placeholder="ProductId"
                            autofocus="true"></form:input>
                          <form:errors path="productId"></form:errors>  
                </div>
            </div>
            </spring:bind>
            
            <spring:bind path="description">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <label class="col-sm-2 control-label">Description:</label>
                <div class="col-sm-10">
                                    
                     <form:input type="text" path="description" class="form-control" placeholder="Description"></form:input>
                     <form:errors path="description"></form:errors>  
                </div>
            </div>
            </spring:bind>
            
            <spring:bind path="price">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <label class="col-sm-2 control-label">Price:</label>
                <div class="col-sm-10">
                   <form:input type="text" path="price" class="form-control" placeholder="Price"></form:input>
                   <form:errors path="price"></form:errors>  
                   
                </div>
            </div>
            </spring:bind>
            <spring:bind path="imageUrl">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <label class="col-sm-2 control-label">Image Url:</label>
                <div class="col-sm-10">
                    <form:input type="text" path="imageUrl" class="form-control" placeholder="ImageUrl"></form:input>
                     <form:errors path="imageUrl"></form:errors>  
                </div>
            </div>
            </spring:bind>
            
            <div class="row">
                <button type="submit" class="btn btn-default">Submit</button>
            </div>
        </form:form>
    </div>
</div>

</body>
</html>