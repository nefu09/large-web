package servlet01;

import servlet02.News;

import javax.servlet.ServletContext;
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

public class ModifyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      String sql = "select * from news where id=?";
        int id = Integer.parseInt(req.getParameter("id"));
        List<News> newsList = new ArrayList<>();
        HttpSession httpSession = req.getSession();
        int n = Integer.parseInt(req.getParameter("id"));
        try (Connection connection = DataSourceUtils.getConnection();
             PreparedStatement ns = connection.prepareStatement(sql)){
            ns.setInt(1,id);
            try (ResultSet rs = ns.executeQuery()) {
                while (rs.next()) {
                    News news = new News();
                    news.setId(rs.getInt("id"));
                    news.setTitle(rs.getString("title"));
                    news.setDate(rs.getString("date"));
                    news.setContent(rs.getString("content"));
                    newsList.add(news);
                }
            }
            httpSession.setAttribute("newsmodify",newsList);
            resp.sendRedirect(req.getContextPath()+"/modifynews.jsp");

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }


}
