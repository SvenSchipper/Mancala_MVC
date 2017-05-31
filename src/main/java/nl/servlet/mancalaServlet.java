package nl.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class mancalaServlet extends HttpServlet
{
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException
    {
        HttpSession session = request.getSession();
        GameState state = (GameState) session.getAttribute("state");
        if(state == null)
        {
            state = new GameState();
        }
        if(request.getParameter("playField") != null)
        {
            state.play(Integer.parseInt(request.getParameter("playField")));
        }
        session.setAttribute("state", state);
        RequestDispatcher rd = request.getRequestDispatcher("Mancala.jsp");
        rd.forward(request, response);
    }
}