package webapps.chap03;

import java.net.URLDecoder;

public class test{
    public static void main(String[] args) {
        Cookies[] cookies = request.getCookies();
        if (cookies != null && cookies.length>0) {
            for (int i = 0; i < cookies.length; i++) {
                if (cookies[i].getName().equals("name")) {
                    Cookie cookie = new Cookie("name","");
                    cookie.setMaxage(0);
                    response.addCookie(cookie);
                }
            }
        }
    }
}