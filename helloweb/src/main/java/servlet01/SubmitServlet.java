package servlet01;

import servlet02.News;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class SubmitServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        resp.setCharacterEncoding("utf-8");

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession httpSession = req.getSession();
        List<News> newsList = new ArrayList<>();
        String sql = "select * from news ";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql)) {
            try (ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    News news = new News();
                    news.setId(rs.getInt("id"));
                    news.setTitle(rs.getString("title"));
                    news.setDate(rs.getString("date"));
                    news.setContent(rs.getString("content"));
                    newsList.add(news);
                }
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        String user = (String)req.getParameter("useName");
        String psw = (String)req.getParameter("psw");

        if(user.equals("admin")&&psw.equals("admin")) {
            httpSession.setAttribute("user","niu");
            httpSession.setAttribute("newslist",newsList);
            resp.sendRedirect(req.getContextPath()+"/newsmanage.jsp");
        }
        else {
            resp.sendRedirect(req.getContextPath()+"/login.jsp");
        }
    }
}
