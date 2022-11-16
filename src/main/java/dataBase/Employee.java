package dataBase;

public class Employee {
	private int id;
	private String name;
	private int active;
	private String email;
	private int phone;
	private String country;

	public Employee(int id, String name, int active, String email, int phone, String country) {
		super();
		this.id = id;
		this.name = name;
		this.active = active;
		this.email = email;
		this.phone = phone;
		this.country = country;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

}
