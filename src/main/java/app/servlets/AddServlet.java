package app.servlets;

import app.entities.User;
import app.model.UsersList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by zibady on 11/26/18.
 */
public class AddServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher reqDispatcher = request.getRequestDispatcher("views/add.jsp");
        reqDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String password = request.getParameter("pass");
        if (!name.isEmpty()) {
            UsersList usersList = UsersList.getInstance();
            usersList.add(new User(name, password));
        }
        request.setAttribute("userName", name);
        doGet(request, response);
    }
}
