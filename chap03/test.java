package webapps.chap03;

import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URLEncoder;
import java.sql.Struct;
import java.util.Enumeration;


public class test{
    public static void main(String[] args) {
        Enumeration<String> attrEnum = application.getAttributeNames();
        while (attrEnum.hasMoreElements()) {
            String name = attrEnum.nextElement();
            Object value = application.getAttribute(name);
        }
    }
}`