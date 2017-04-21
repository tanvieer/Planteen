package entity;

public class UserInfo {
	private int id;
	private String userId;
	private String password;
	private String name;
	private String userType;
	private String email;

	public UserInfo(String userId,String name, String password, String email, String userType) {
		this.userId = userId;
		this.password = password;
		this.name = name;
		this.userType = userType;
		this.email = email;

	}

	public UserInfo(int id, String name, String userId, String password, String email,
			String userType) {
		this.id = id;
		this.userId = userId;
		this.password = password;
		this.name = name;
		this.userType = userType;
		this.email = email;

	}

	public void setId(int id) {
		this.id = id;
	}

	public void setUserid(String uid) {
		this.userId = uid;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setPassword(String pass) {
		this.password = pass;
	}

	public void setUserType(String utype) {
		this.userType = utype;
	}

	public int getId() {
		return id;
	}

	public String getUserId() {
		return userId;
	}

	public String getName() {
		return name;
	}
	

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public String getUserType() {
		return userType;
	}

}