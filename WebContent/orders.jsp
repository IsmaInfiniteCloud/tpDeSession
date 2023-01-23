<%-- 
    Document   : commandes
    Created on : 23 déc. 2022, 08 h 34 min 21 s
    Author     : Ismail
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="dao.OrderDao"%>
<%@page import="connexion.DbCon"%>
<%@page import="dao.ProductDao"%>
<%@page import="model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--%
DecimalFormat dcf = new DecimalFormat("#.##");
request.setAttribute("dcf", dcf);
User auth = (User) request.getSession().getAttribute("auth");
List<Order> orders = null;
if (auth != null) {
    request.setAttribute("person", auth);
    OrderDao orderDao  = new OrderDao(DbCon.getConnection());
        orders = orderDao.userOrders(auth.getId());
}else{
        response.sendRedirect("login.jsp");
}
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if (cart_list != null) {
        request.setAttribute("cart_list", cart_list);
}

%-->
<c:set var="dcf" value="#.##" scope="request"/>
<c:set var="auth" value="${sessionScope.auth}" scope="request"/>
<c:set var="orders" value="" scope="request"/>
<c:if test="${auth != null}">
    <c:set var="person" value="${auth}" scope="request"/>
    <c:set var="orderDao" value="new OrderDao(DbCon.getConnection())" scope="request"/>
    <c:set var="orders" value="${orderDao.userOrders(auth.id)}" scope="request"/>
</c:if>
<c:if test="${auth == null}">
    <c:redirect url="login.jsp" />
</c:if>
<c:set var="cart_list" value="${sessionScope.cart_list}" scope="request"/>
<c:if test="${cart_list != null}">
    <c:set var="cart_list" value="${cart_list}" scope="request"/>
</c:if>

<!DOCTYPE html>
<html>
    <head>
        <%@include file="/includes/head.jsp"%>
        <title>Vynil Vault</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body id="body">
        <%@include file="/includes/navbar.jsp"%>
        <div class="container" style="color:black">
            <div class="card-header my-3" id="card-header">Toute les commandes</div>
            <table class="table table-light">
                <thead>
                    <tr>
                        <th scope="col">Date</th>
                        <th scope="col">Nom</th>
                        <th scope="col">Artist</th>
                        <th scope="col">Quantite</th>
                        <th scope="col">Prix</th>
                        <th scope="col">Annuler</th>
                    </tr>
                </thead>
                <tbody>

                    <%                        if (orders != null) {
                            for (Order o : orders) {%>
                    <tr>
                        <td><%=o.getDate()%></td>
                        <td><%=o.getName()%></td>
                        <td><%=o.getArtist()%></td>
                        <td><%=o.getQunatity()%></td>
                        <td><%=dcf.format(o.getPrice())%></td>
                        <td><a class="btn btn-sm btn-danger" href="cancel-order?id=<%=o.getOrderId()%>">Annuler la commande</a></td>
                    </tr>
                    <%}
                        }
                    %>

                </tbody>
            </table>
        </div>
        <%@include file="/includes/footer.jsp"%>
    </body>
</html>