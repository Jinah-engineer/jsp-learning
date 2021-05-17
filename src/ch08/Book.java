package ch08;

public class Book {
	// JavaBeans - jsp에서의 속성을 표현한다.
	// 데이터를 저장하는 필드 + 데이터를 읽어올 때 사용되는 메서드 + 값을 저장할 때 사용되는 메소드
	private String code;
	private String title;
	private String writer;
	private String publisher;
	private boolean out;
	
	public boolean isOut() {
		return out;
	}
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	private int price;
}
