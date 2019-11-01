package dataDto;

import java.sql.Timestamp;

public class MemberDto {

	private String num;
	private String name;
	private String nickname;
	private String id;
	private String pass;
	private String passch;
	private String email;
	private String emailch;
	private Timestamp gaipday;
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getPassch() {
		return passch;
	}
	public void setPassch(String passch) {
		this.passch = passch;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEmailch() {
		return emailch;
	}
	public void setEmailch(String emailch) {
		this.emailch = emailch;
	}
	public Timestamp getGaipday() {
		return gaipday;
	}
	public void setGaipday(Timestamp gaipday) {
		this.gaipday = gaipday;
	}
	
	
}
