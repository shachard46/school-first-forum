package test;

public class MyServlet {
	public static void main(String args[]) throws Exception{
		String s = "פוסט ראשון111";
		String s2 = new String(s.getBytes("UTF8"), "ISO8859-1");
		System.out.println(s);
		System.out.println(s2);
	}
}
