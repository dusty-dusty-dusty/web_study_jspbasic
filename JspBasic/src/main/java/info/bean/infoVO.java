package info.bean;

public class infoVO {

	private String name;
	private String id;
	
	public String getGender() {
		char sung = id.charAt(7);
		if( sung=='1' | sung=='3')
			return "남자";
		else return "여자";
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
}
