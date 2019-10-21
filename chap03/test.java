package webapps.chap03;

import java.io.FileReader;
import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.HashMap;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class test{
    public static void main(String[] args) {
        FileReader reader = null;
        try {
            String path = request.getParameter("path");
            reader = new FileReader(getServletContext().getRealPath(path));

        } catch (IOException ex) {
            //TODO: handle exception
            
        }finally{
            if (reader != null) {
                try {
                    reader.close();
                } catch (Exception ex) {
                    //TODO: handle exception
                    
                }
            }
        }
    }
}