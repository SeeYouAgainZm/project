package laozheng.kt.ssm.domain;

public class Student {
	//ѧ��ID
	private Long id;
	
	//ѧ������
	private String name;
	
	//����
	private String pwd;
	
	//ѧ��
	private String stunum;
	
	//ͷ��
	private String imgUrl;
	
	//�༶
	private Classes classes;
	
	//�Ա�
	private Boolean  sex;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getStunum() {
		return stunum;
	}

	public void setStunum(String stunum) {
		this.stunum = stunum;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public Classes getClasses() {
		return classes;
	}

	public void setClasses(Classes classes) {
		this.classes = classes;
	}

	public Boolean getSex() {
		return sex;
	}

	public void setSex(Boolean sex) {
		this.sex = sex;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", pwd=" + pwd + ", stunum=" + stunum + ", imgUrl=" + imgUrl
				+ ", classes=" + classes + ", sex=" + sex + "]";
	}
	
	
	
}
