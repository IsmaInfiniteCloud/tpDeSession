<%-- 
    Document   : NouveauCompte
    Created on : 23 déc. 2022, 08 h 34 min 21 s
    Author     : Ismail
--%>

<%@page import="model.User"%>
<%@page import="model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%
    User auth = (User) request.getSession().getAttribute("auth");
    if (auth != null) {
        response.sendRedirect("index.jsp");
    }
    ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
    if (cart_list != null) {
        request.setAttribute("cart_list", cart_list);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="/includes/head.jsp"%>
        <title>Créer un compte</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body id="body">
        <%@include file="/includes/navbar.jsp"%>

        <div class="container">
            <div class="card w-50 mx-auto my-5">
                <div class="card-header text-center">Créer un compte</div>
                <div class="card-body">
                    <form action="AjouterUnUser" method="post">
                        <div class="form-group">
                            <label>Nom</label> 
                            <input type="text" name="name" class="form-control" placeholder="Entrer votre nom">
                        </div>
                        <div class="form-group">
                            <label>Courriel</label> 
                            <input type="email" name="email" class="form-control" placeholder="Entrer votre email">
                        </div>
                        <div class="form-group">
                            <label>Mot de passe</label> 
                            <input type="password" name="password" class="form-control" placeholder="Entrer votre mot de passe">
                        </div>
                        <div class="form-group">
                            <label>Confirmer le mot de passe</label> 
                            <input type="password" name="confirm-password" class="form-control" placeholder="Confirmer votre mot de passe">
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary">Créer un compte</button>
                            
                        </div>
                        <div class="text-right">
                            <a href="login.jsp" class="btn btn-outline-success" >Retour</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <%@include file="/includes/footer.jsp"%>
    </body