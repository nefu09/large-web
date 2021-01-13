package servlet01;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class ToLoginServlet extends SubmitServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        resp.setCharacterEncoding("utf-8");
        HttpSession httpSession = req.getSession();
        String use = (String) httpSession.getAttribute("user");
        if(use==null)
        resp.sendRedirect(req.getContextPath()+"/login.jsp");
        else
            resp.sendRedirect(req.getContextPath()+"/newsmanage.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
