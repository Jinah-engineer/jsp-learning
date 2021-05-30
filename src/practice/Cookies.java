package practice;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class Cookies  {

	// Utility Class for Cookies

	// 쿠키(name, value)의 쌍 형태로 저장하는 map 만들기
	private Map<String, Cookie> cookieMap = 
			new java.util.HashMap<>();

	// Cookies 클래스 생성자 -> parameter로 전달받은 request로부터 Cookie 배열을 읽어와, 
	// 각각의 Cookie 객체를 cookieMap에 저장
	public Cookies(HttpServletRequest request) {

		Cookie[] cookies = request.getCookies();

		if(cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				cookieMap.put(cookies[i].getName(), cookies[i]);
			}
		}
	}
	
	// cookieMap에서 지정한 이름이 Cookie 객체를 구한다. 지정한 이름의 쿠키가 존재하지 않으면 null return
	public Cookie getCookie(String name) {
		return cookieMap.get(name);
	}
	
	// domain을 설정하지 않은 only 쿠키 추가하기 
	public String getValue(String name) throws IOException {
		Cookie cookie = cookieMap.get(name);
		
		if (cookie == null) {
			return null;
		}
		
		return URLDecoder.decode(cookie.getValue(), "euc-kr");
	}
	
	// 지정한 이름의 Cookie가 존재하는 경우 true, or false
	public boolean exists(String name) {
		return cookieMap.get(name) != null;
	}
	
	// 이름이 name이고 값이 value인 Cookie 객체를 생성해서 return
	public static Cookie createCookie(String name, String value) throws IOException{
		return new Cookie(name, URLEncoder.encode(value, "utf-8"));
	}
	
	// 이름이 name, 값이 value, 경로가 path, 유효시간이 maxAge인 Cookie 객체를 생성해서 return
	public static Cookie createCookie(String name, String value, String path, int maxAge) throws IOException {
		Cookie cookie = new Cookie(name, URLEncoder.encode(value, "utf-8"));
		
		cookie.setPath(path);
		cookie.setMaxAge(maxAge);
		
		return cookie;
	}
	
	// 이름이 name, 값이 value, 도메인이 domain, 경로가 path, 유효시간이 maxAge인 Cookie 객체를 생성해서 return
		public static Cookie createCookie(String name, String value, String domain, String path, int maxAge) throws IOException {
			Cookie cookie = new Cookie(name, URLEncoder.encode(value, "utf-8"));
			
			cookie.setDomain(domain);
			cookie.setPath(path);
			cookie.setMaxAge(maxAge);
			
			return cookie;
		}
	
}