package com.aurelmarishta;

import java.io.Serializable;

public class Coustumer implements Serializable{
	
	private String fName;
	private String lName;
	private String state;	
	private String street;
	private String city;
	private String zipcode;
	private String email;
	private String password;
	private String phone;
	
	public Coustumer() {
		this.fName="";
		this.lName = "";
		this.street = "";
		this.city = "";
		this.zipcode = "";
		this.email = "";
		this.password = "";
		this.phone = "";
		this.state = "";
	}	
	
	
	
	public Coustumer(String fName, String lName, String phone, String state, String city, String street, String zipcode, String email,
			String password) {
		this.fName = fName;
		this.lName = lName;
		this.state = state;
		this.street = street;
		this.city = city;
		this.zipcode = zipcode;
		this.email = email;
		this.password = password;
		this.phone = phone;
	}



	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
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

	public void setPassword(String password) {
		this.password = password;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
	
	
	
	
}
