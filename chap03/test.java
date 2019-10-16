package webapps.chap03;

import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URLEncoder;
import java.sql.Struct;
import java.util.Enumeration;


public class test{
    public static void main(String[] args) {
        char[] buff = new char[128];
        int len = -1;
        String filePath = "/var/lib/tomcat8/webapps/chap05/message/notice.txt";
        try(InputStreamReader fr = new InputStreamReader(
            new FileInputStream(filePath),"UTF-8")) {
                while ((len = fr.read(buff)) != -1) {
                    out.print(new String(buff,0,len));
                }
            
        } catch (IOException ex) {
            //TODO: handle exception
            out.println("exception"+ex.getMessage());
        }
    }
}