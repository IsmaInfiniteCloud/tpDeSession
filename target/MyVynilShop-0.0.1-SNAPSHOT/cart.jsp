<%-- 
    Document   : detailProduit
    Created on : 23 déc. 2022, 08 h 34 min 21 s
    Author     : Ismail
--%>

<%@page import="connexion.DbCon"%>
<%@page import="dao.ProductDao"%>
<%@page import="model.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%
    DecimalFormat dcf = new DecimalFormat("#.##");
    request.setAttribute("dcf", dcf);
    User auth = (User) request.getSession().getAttribute("auth");
    if (auth != null) {
        request.setAttribute("person", auth);
    }
    ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
    List<Cart> cartProduct = null;
    double total = 0;
    if (cart_list != null && !cart_list.isEmpty()) {  // check if cart list is not null and not empty
        ProductDao pDao = new ProductDao(DbCon.getConnection());
        cartProduct = pDao.getCartProducts(cart_list);
       total = pDao.getTotalCartPrice(cart_list);
        request.setAttribute("total", total);
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
    <body>
        <%@include file="/includes/navbar.jsp"%>

        <div class="container my-3">
            <div class="d-flex py-3"><h2>Prix Total: $ ${(total>0)?dcf.format(total):0} </h2> <a class="mx-3 btn btn-primary" href="cart-check-out">Check Out</a></div>
            <table class="table table-light">
                <thead>
                    <tr>
                        <th scope="col">Nom</th>
                        <th scope="col">Artist</th>
                        <th 
                            <th scope="col">Prix</th>
                        <th scope="col">Acheter</th>
                        <th scope="col">Annuler</th>
                    </tr>
                </thead>
                <tbody>
                    <%    if (cart_list != null) {
                            for (Cart c : cartProduct) {
                    %>
                    <tr>
                        <td><%=c.getName()%></td>
                        <td><%=c.getArtist()%></td>
                        <td><%= dcf.format(c.getPrice())%></td>
                        <td>
                            <form action="order-now" method="post" class="form-inline">
                                <input type="hidden" name="id" value="<%= c.getId()%>" class="form-input">
                                <div class="form-group d-flex justify-content-between">
                                    <a class="btn btn-sm btn-incre" href="quantity-inc-dec?action=inc&id=<%=c.getId()%>"><i class="fas fa-plus-square"></i></a> 
                                    <input type="text" name="quantity" class="form-control"  value="<%=c.getQuantity()%>" readonly> 
                                    <a class="btn btn-sm btn-decre" href="quantity-inc-dec?action=dec&id=<%=c.getId()%>"><i class="fas fa-minus-square"></i></a>
                                </div>
                                <button type="submit" class="btn btn-primary btn-sm">Acheter</button>
                            </form>
                        </td>
                        <td><a href="remove-from-cart?id=<%=c.getId()%>" class="btn btn-sm btn-danger">Supprimer</a></td>
                    </tr>
                    <%
                        }
                    } else {
                    %>
                    <tr>
                        <td colspan="5">Aucun produit</dt>
                        <td colspan="5" class="text-center"><h5>Le panier est vide</h5></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        </div>



        <%@include file="/includes/footer.jsp"%>
    </body>
</html>