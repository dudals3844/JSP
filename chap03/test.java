package webapps.chap03;

import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.http.Cookie;

public class test{
    public static void main(String[] args) {
        Cookie cookie1 = new Cookie("path1",URLEncoder.encode("path:/chap9/path1","utf-8"));
        cookie1.setPath("/chap09/path1");
        response.addCookie(cookie1);
    
        Cookie cookie2 = new Cookie("path2",URLEncoder.encode("path:","utf-8"));
        response.addCookie(cookie2);

        Cookie cookie3 = new Cookie("path3",URLEncoder.encode("path:/","utf-8"));
        cookie1.setPath("/");
        response.addCookie(cookie3);
        
        Cookie cookie4 = new Cookie("path4",URLEncoder.encode("path:/chap9/path2","utf-8"));
        cookie1.setPath("/chap09/path2");
        response.addCookie(cookie4);

    
    
    }
}