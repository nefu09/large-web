package servlet01;

import servlet02.News;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
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

public class DeleteServlet extends SubmitServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int n = Integer.parseInt(req.getParameter("id"));
        String sql1 ="delete from news where id=?";
        String sql2 ="select * from news";
        List<News> newsList = new ArrayList<>();
        HttpSession httpSession = req.getSession();
        try (Connection connection = DataSourceUtils.getConnection();
             PreparedStatement ns = connection.prepareStatement(sql1);
             PreparedStatement nl = connection.prepareStatement(sql2)){
            ns.setInt(1,n);
            ns.executeUpdate();
            try (ResultSet rs = nl.executeQuery()) {
                while (rs.next()) {
                    News news = new News();
                    news.setId(rs.getInt("id"));
                    news.setTitle(rs.getString("title"));
                    news.setDate(rs.getString("date"));
                    news.setContent(rs.getString("content"));
                    newsList.add(news);
                }
                    httpSession.setAttribute("newslist",newsList);
                    resp.sendRedirect(req.getContextPath()+"/newsmanage.jsp");
                }
            }
        catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
