<%-- 
    Document   : detailProduit
    Created on : 23 déc. 2022, 08 h 34 min 21 s
    Author     : Ismail
--%>

<%@page import="connexion.DbCon"%>
<%@page import="dao.ProductDao"%>
<%@page import="model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<%
    String id = request.getParameter("id");
    ProductDao pd = new ProductDao(DbCon.getConnection());
    Product product = pd.getProductById(id);
%>

<!DOCTYPE html>
<html>
    <head>
        <%@include file="/includes/head.jsp"%>
        <title>Détails du produit</title>
         <link rel="stylesheet" href="./style.css">
    </head>
    
    <body id="body">
        <%@include file="/includes/navbar.jsp"%>

        <div class="container">
            <div class="card-header my-3" id="card-header">Détails du produit</div>
            <div class="row" id="max-wd">
                <div class="col-md-3 my-3">
                    <div class="card w-100">
                        <img class="card-img-top" src="product-image/<%=product.getImage()%>"
                             alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title"><%=product.getName()%></h5>
                            <h6 class="price">Prix: $<%=product.getPrice()%></h6>
                            <h6 class="artist">Artist: <%=product.getArtist()%></h6>
                            <h6 class="genre">Genre: <%=product.getGenre()  %></h6>
                            <h6 class="year">Annee: <%=product.getYear()  %></h6>
                            <p class="description">Description: <%=product.getDescription()  %></p>
                            <div class="mt-3 d-flex justify-content-between">
                                <a class="btn btn-outline-dark" href="add-to-cart?id=<%=product.getId()%>">Ajouter</a>
                                <a class="btn btn-primary" href="order-now?quantity=1&id=<%=product.getId()%>" id="btn-hover">Acheter</a>
                            </div>
                  <a href="index.jsp" id="id-Nav">Retour aux produits</a>
                            <a href="index.jsp"></a>
                            <%@include file="/includes/footer.jsp"%>
                            </body>
                            </html>
