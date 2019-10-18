package webapps.chap03;



public class test{
    public static void main(String[] args) {
        String code = request.getParameter("code");
        String viewPageURI = null;

        if (code.equals("A")) {
            viewPageURI = "/viewModule/a.jsp";
        } else if (code.equals("B")){
            viewPageURI = "/viewModule/b.jsp";
        } else if (code.equals("C")) {
            viewPageURI = "/viewModule/c.jsp";
        }
    }
}