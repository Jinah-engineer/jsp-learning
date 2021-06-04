package sample2.bean;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.Instant;

public class Board {
	private int id;
	private String title;
	private String body;
	private String memberId;
	private Timestamp inserted;
	
	// property
	public String getMemberIdHidden() {
		return memberId.substring(0, 1) + "***";
	}
	
	public String getTimeAgo() {
		long now = System.currentTimeMillis();
		long inserted = this.inserted.getTime();
		
		long diff = now - inserted;
		
		diff /= 1000;
		
		if (diff < 60 * 60) {
			// diff가 1시간보다 작으면
			return (diff / 60) + "분 전";
		} else if (diff < 60 * 60 * 24) {
			// diff가 하루 전에 작성되었다면
			return (diff / (60 * 60)) + "시간 전";
		} else {
			return new SimpleDateFormat("yy/MM/dd").format(this.inserted);
		}
	}
	
	// Getter and Setter
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public Timestamp getInserted() {
		return inserted;
	}
	public void setInserted(Timestamp inserted) {
		this.inserted = inserted;
	}
}
