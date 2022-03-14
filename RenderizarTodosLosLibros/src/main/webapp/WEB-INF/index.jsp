<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>All books</title>
</head>
<body>
	<div class="container mt-5">
		<h1>All books</h1>
		<table class="table">
		  <thead>
		    <tr>
		      <th scope="col">ID</th>
		      <th scope="col">Title</th>
		      <th scope="col">Language</th>
		      <th scope="col">#Pages</th>
		    </tr>
		  </thead>
		  <tbody>
		  	<c:forEach var="book" items="${books}">
		  		<tr>
			      <td>${book.id}</td>
			      <td><a href="/books/${book.id}">${book.title}</a></td>
			      <td>${book.language}</td>
			      <td>${book.numberOfPages}</td>
			    </tr>
		  	</c:forEach>
		  </tbody>
		</table>
	</div>
</body>
</html>