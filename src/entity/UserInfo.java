package entity;

public class UserInfo {
	private int id;
	private String username;
	private String password;
	private String name;
	private String userType;
	private String email;

	public UserInfo(String name, String userId, String email,  String password, String userType) {
		this.username = userId;
		this.password = password;
		this.name = name;
		this.userType = userType;
		this.email = email;

	}

	public UserInfo(int id, String name, String userId, String email,  String password, String userType) {
		this.id = id;
		this.username = userId;
		this.password = password;
		this.name = name;
		this.userType = userType;
		this.email = email;

	}

	public void setId(int id) {
		this.id = id;
	}
	
	public int getId() {
		return id;
	}
	
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
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
	
	

	public String getName() {
		return name;
	}
	

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}

	public String getUserType() {
		return userType;
	}

}