package servlet;

public class Employees {
	private String fullName;
	private Boolean onProject;

	public Employees(String fullName, Boolean onProject) {
		super();
		this.fullName = fullName;
		this.onProject = onProject;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public Boolean getOnProject() {
		return onProject;
	}

	public void setOnProject(Boolean onProject) {
		this.onProject = onProject;
	}

}
