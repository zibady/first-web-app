package app.servlets;

import app.model.UsersList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * Created by zibady on 11/26/18.
 */
public class UsersListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UsersList usersList = UsersList.getInstance();
        List<String> names = usersList.getListOfUsers();
        request.setAttribute("userNames", names);

        RequestDispatcher reqDispatcher = request.getRequestDispatcher("views/usersList.jsp");
        reqDispatcher.forward(request, response);
    }
}
