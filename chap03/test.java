package webapps.chap03;

import java.io.FileReader;
import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.HashMap;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import com.mysql.cj.xdevapi.Result;
import com.mysql.cj.xdevapi.Statement;

public class test{
    public static void main(String[] args) {
        String idValue = request.getParameter("id");

        Connection conn = null;
        PreparedStatement pstmtItem = null;
        PreparedStatement pstmtDetail = null;

        String jdbcDriver = "jdbc:mysql://localhost:3306/chap14"+"?useUnicode=true&characterEncoding=utf8";
        String dbUser = "choi";
        String dbPass = "3844";
        Throwable occuredException = null;
        try {
            int id = Integer.parseInt(idValue);
            conn = DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
            conn.setAutoCommit(false);

            pstmtItem =  conn.prepareStatement("insert into ITEM values (?,?)");
            pstmtItem.setInt(1, id);
            pstmtItem.setString(2, "item name "+id);
            pstmtItem.executeUpdate();

            if (request.getParameter("error") != null) {
                throw new Exception("make exception");

            }

            pstmtDetail = conn.prepareStatement("insert into ITEM_DETAIL values (?,?)");
            pstmtDetail.setInt(1, id);
            pstmtDetail.setString(2, "Information "+id);
            pstmtDetail.executeUpdate();

            conn.commit();
        } catch (Throwable e) {
            //TODO: handle exception
            if (conn != null) {
                try {
                    conn.rollback();
                } catch (SQLException ex) {
                    //TODO: handle exception
                    
                }
            }
            occuredException = e;
        } finally{
            if (pstmtItem != null) {
                try {
                    pstmtItem.close();
                } catch (SQLException ex) {
                    //TODO: handle exception
                }
            }
            if (pstmtDetail != null) {
                try {
                    pstmtDetail.close();
                } catch (SQLException ex) {
                    //TODO: handle exception
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    //TODO: handle exception
                }
            }
        }
    }
}