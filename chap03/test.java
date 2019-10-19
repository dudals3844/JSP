package webapps.chap03;

import java.net.URLDecoder;

public class test{
    public static void main(String[] args) {
        Cookies[] cookies = request.getCookies();
        if (cookies != null && cookies.length>0) {
            for (int i = 0; i < cookies.length; i++) {
                cookies[i].getName();
                URLDecoder.decode(cookies[i].getValue(),"utf-8");
            }
        }
    }
}