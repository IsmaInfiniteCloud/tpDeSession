<%-- 
    Document   : productDetails
    Created on : 14 janv. 2023, 20 h 42 min 17 s
    Author     : Ismail
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Product Details</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title">${product.name}</h5>
                </div>
                <div class="card-body">
                    <p class="card-text">Price: ${product.price}</p>
                    <%-- You can use the c:if tag to check the condition if the user is logged in or not and then show the add to cart and favorites button --%>
                    <c:if test="${sessionScope.username != null}">
                        <a href="add-to-cart?id=${product.product_id}" class="btn btn-success">Add to Cart</a>
                        <a href="add-to-favorites?id=${product.product_id}" class="btn btn-warning">Add to Favorites</a>
                    </c:if>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title">Product Description</h5>
                </div>
                <div class="card-body">
                    <p class="card-text">${product.description}</p>
                </div>
            </div>
        </div>
    </body>
</html>