package mvc.com.model;

public class LoginBean {
	private String id;
	private String password;
	
	public String getId() {
		return id;
	}
	
	public void setId(String id){
		this.id = id;
	}
	
	public String getPw() {
		return password;
	}
	
	public void setPassword(String password){
		this.password = password;
	}
	
	public boolean validate() {
		if(id.equals("admin")&&password.equals("admin"))
			return true;
		else 
			return false;
	}
}
