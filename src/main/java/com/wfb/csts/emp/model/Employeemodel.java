package com.wfb.csts.emp.model;
import javax.persistence.Cacheable;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Cacheable(false)
@Table(name = "employeemodel") 
public class Employeemodel {
	
	@Id
	private Integer EId;
	private String FirstName;
	private String MiddleName;
	private String LastName;
	private String Age;
	private String Phone;
	private String Address;
	
	
	
	/*public Employeemodel() {
		
	}*/
	/*public Model(String eId, String firstName, String middleName,
			String lastName, String age, String phone, String address) {
		
		EId = eId;
		FirstName = firstName;
		MiddleName = middleName;
		LastName = lastName;
		Age = age;
		Phone = phone;
		Address = address;
	}*/
	
	public Integer getEId() {
		return EId;
	}
	public void setEId(Integer eId) {
		EId = eId;
	}
	
	public String getFirstName() {
		return FirstName;
	}
	
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getMiddleName() {
		return MiddleName;
	}
	public void setMiddleName(String middleName) {
		MiddleName = middleName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getAge() {
		return Age;
	}
	public void setAge(String age) {
		Age = age;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	
	
	

}
