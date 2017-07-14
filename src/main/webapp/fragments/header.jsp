<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html  lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link href="http://cdn.jsdelivr.net/webjars/bootstrap/3.3.4/css/bootstrap.min.css"
            rel="stylesheet" media="screen"/>

    <script src="http://cdn.jsdelivr.net/webjars/jquery/2.1.4/jquery.min.js"
           ></script>

    <link href="${contextPath}/resources/css/guru.css"
          rel="stylesheet" media="screen"/>
    
</head>
<body>

<div class="container">
    <div>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="/">Home</a>
                    <ul class="nav navbar-nav">
                        <li><a href="/products">Products</a></li>
                        <li><a href="/product/new">Create Product</a></li>
                        <li><a href="/logout">Logout</a></li>
                     
                        
                       
                    </ul>

                </div>
            </div>
        </nav>

        <div class="jumbotron">
            <div class="row text-center">
                <div class="">
                  
                </div>
            </div>
            <div class="row text-center">
                <img src="${contextPath}/resources/images/part.jpg" width="400"
                     />
            </div>
        </div>
    </div>
</div>
</body>
</html>