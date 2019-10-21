package webapps.chap03;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.HashMap;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class test{
    public static void main(String[] args) {
        HashMap<String,Object> mapData = new HashMap<String,Object>();
        mapData.put("name", "choi");
        mapData.put("today", new java.util.Date());
        
    }
}