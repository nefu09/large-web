package servlet01;
import servlet02.News;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MyListener implements HttpSessionListener {
    @Override
    public void sessionCreated(HttpSessionEvent se) {
        HttpSession httpSession = se.getSession();
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
                httpSession.setAttribute("newslist",newsList);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}

