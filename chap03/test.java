package webapps.chap03;

import java.io.FileReader;
import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.text.SimpleDateFormat;
import java.util.HashMap;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import com.mysql.cj.xdevapi.Result;
import com.mysql.cj.xdevapi.Statement;

public class test{
    public static void main(String[] args) {
        Class.forName("com.mysql.jdbc.Driver");

        Connection conn = null;
        Statement stmt = null;
        Result rs = null;

        try {
            String jdbc = "jdbc:mysql://localhost:3306/chap14?"+"useUnicode=true&characterEncoding=utf8";
            String dbUser = "choi";
            String dbPass = "3844";
            String query = "select * from MEMBER order by MEMBERID";

            conn = DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
            stmt = conn.createStatement();
            rs = stmt.executeQuery(query);
        } catch (Exception e) {
            //TODO: handle exception
        }
    }
}