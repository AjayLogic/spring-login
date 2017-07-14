<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html  lang="en">
<head>

    <title>Spring Framework Guru</title>

     <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <jsp:include page="fragments/header.jsp"/>

    <h2>Product Details</h2>
        <div>
            <form:form class="form-horizontal" modelAttribute="product">
                <div class="form-group">
                    <label class="col-sm-2 control-label">Product Id:</label>
                    <div class="col-sm-10">
                    <form:input path="id" class="form-control-static"
            placeholder="Product Id"  type="text" readonly="true"/>
                      </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Description:</label>
                    <div class="col-sm-10">
                   <form:input path="description" class="form-control-static"
            placeholder="Description"  type="text" readonly="true"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Price:</label>
                    <div class="col-sm-10">
                       
                         <form:input path="price" class="form-control-static"
            placeholder="Price"  type="text" readonly="true"/>
                         
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Image Url:</label>
                    <div class="col-sm-10">
                       <form:input path="imageUrl" class="form-control-static"
            placeholder="url...."  type="text" readonly="true"/>
                    </div>
                </div>
            </form:form>
    </div>
</div>

</body>
</html>