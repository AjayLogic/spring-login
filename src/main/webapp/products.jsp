<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head >
    <title>Spring Framework Guru</title>
   	<link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet"/>
</head>
<body>
<div class="container">
    <jsp:include page="fragments/header.jsp"/>
    <div>
    <c:if test="${products != null}">
    
        <h2>Product List</h2>
        <table class="table table-striped">
            <tr>
                <th>Id</th>
                <th>Product Id</th>
                <th>Description</th>
                <th>Price</th>
                <th>View</th>
                <th>Edit</th>
            </tr>
            
          <c:forEach items="${products}" var="product" varStatus="status">
		<tr>
		     <td>${product.id}</td>
			  <td>${product.productId}</td>
			    <td>${product.description}</td>
			      <td>${product.price}</td>
			        <td><a href="/product/${product.id}">View</a></td>
			        <td><a href="/product/edit/${product.id}">Edit</a></td>
		</tr>
	</c:forEach>
         </table>
         </c:if>

    </div>
</div>

</body>
</html>