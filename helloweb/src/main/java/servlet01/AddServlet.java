package servlet01;

import servlet02.News;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
public class AddServlet extends SubmitServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession httpSession = req.getSession();
        List<News> newsList = new ArrayList<>();
        String title = (String)req.getParameter("title");
        String content = (String)req.getParameter("content");
        String date = (String)req.getParameter("date");
        String sql ="insert into news(title,content,date) values(?,?,?)";
        String sql2 = "select * from news";
        try (Connection connection = DataSourceUtils.getConnection();
             PreparedStatement us = connection.prepareStatement(sql);
             PreparedStatement nl = connection.prepareStatement(sql2)){
            us.setString(1,title);
            us.setString(2,content);
            us.setString(3,date);
            us.executeUpdate();
            try (ResultSet rs =nl.executeQuery()) {
                while (rs.next()) {
                    News news = new News();
                    news.setId(rs.getInt("id"));
                    news.setTitle(rs.getString("title"));
                    news.setDate(rs.getString("date"));
                    news.setContent(rs.getString("content"));
                    newsList.add(news);
                }
            }
            httpSession.setAttribute("newslist",newsList);
            resp.sendRedirect(req.getContextPath()+"/newsmanage.jsp");
        }
        catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
