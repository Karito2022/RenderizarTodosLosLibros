<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>Book ${book.id}</title>
</head>
<body>
	<div class="container mt-5">
		<h1>${book.title}</h1>
		<h4>Description: ${book.description}</h4>
		<h4>Language: ${book.language}</h4>
		<h4>Number of pages: ${book.numberOfPages}</h4>
		<a href="/books" class="btn btn-primary mt-5">Return</a>
	</div>
</body>
</html>