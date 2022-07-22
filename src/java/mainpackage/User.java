package mainpackage;

public abstract class User {
	public static int usersCounter = 0;
	protected String username;
	protected String password;
	protected String name;
	public User() { }
	public User(String username, String password) {
		this.username = username;
		this.password = password;
		usersCounter++;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

	

	
	@Override
	public String toString() {
		return "username: "+username
				+", password: "+password
				;
	}
	
}
