package servlets;

import connexion.DbCon;
import dao.UserDao;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;


@WebServlet(name = "AjouterUnUser", urlPatterns = "/AjouterUnUser")
public class AjouterUnUser extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirm-password");

        // Check if the passwords match
        if (password.equals(confirmPassword)) {
            // Create a new User object
            User user = new User(0, name, email, password);

            // Create a new UserDao object
            Connection con = null;
            try {
                con = DbCon.getConnection();
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(AjouterUnUser.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(AjouterUnUser.class.getName()).log(Level.SEVERE, null, ex);
            }
            UserDao userDao = new UserDao(con);

            // Add the user to the database
            userDao.addUser(user);
            response.sendRedirect("login.jsp");
        } else {
            // Passwords do not match, redirect the user back to the "Créer un compte" page
            response.sendRedirect("nouveauCompte.jsp");
        }
    }
}
