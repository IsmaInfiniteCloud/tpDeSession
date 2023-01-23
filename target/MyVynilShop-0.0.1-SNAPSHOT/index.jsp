<%-- 
    Document   : index
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
    User auth = (User) request.getSession().getAttribute("auth");
    if (auth != null) {
        request.setAttribute("person", auth);
    }
    ProductDao pd = new ProductDao(DbCon.getConnection());
    List<Product> products = pd.getAllProducts();
    ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
    if (cart_list != null) {
        request.setAttribute("cart_list", cart_list);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="/includes/head.jsp"%>
        <title>Vynil Vault</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    
    <body id="body">
        <%@include file="/includes/navbar.jsp"%>

        <div class="container">
            <div class="card-header my-3" id="card-header">Tous les Produits</div>
            <div class="row" id="max-wd">
                <%                            if (!products.isEmpty()) {
                        for (Product p : products) {
                %>
                <div class="col-md-3 my-3">
                    <div class="card w-100">
                        <img class="card-img-top" src="product-image/<%=p.getImage()%>"
                             alt="Card image cap">
                        <div class="card-body">
                            <%
                                final int MAX_LENGTH = 15;  // limiter le maxmimu de caractere dans le titre de lalbum ou le nom de lartiste
                                String cardTitle = p.getName();
                                String artistName = p.getArtist();
                                if (cardTitle.length() > MAX_LENGTH) {
                                    cardTitle = cardTitle.substring(0, MAX_LENGTH) + "...";
                                }
                                if (artistName.length() > MAX_LENGTH) {
                                    artistName = artistName.substring(0, MAX_LENGTH) + "...";
                                }
                            %>

                            <h5 class="card-title"><%=cardTitle%></h5>
                            <h6 class="price">Prix: $<%=p.getPrice()%></h6>
                            <h6 class="category">Artist: <%=artistName%></h6>
                            <div class="mt-3 d-flex justify-content-between">
                                <a class="btn btn-outline-dark" href="add-to-cart?id=<%=p.getId()%>">Ajouter</a>
                                <a class="btn btn-primary" href="order-now?quantity=1&id=<%=p.getId()%>" id="btn-hover">Acheter</a>
                            </div>
                            <br>
                            <a class="btn btn-link" href="productDetails.jsp?id=<%=p.getId()%>">Details</a>
                        </div>
                    </div>
                </div>
                <%
                        }
                    } else {
                        out.println("There is no proucts");
                    }
                %>
            </div>
        </div>


        <%@include file="/includes/footer.jsp"%>
    </body>
</html>