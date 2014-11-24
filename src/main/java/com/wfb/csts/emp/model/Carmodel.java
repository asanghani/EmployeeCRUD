package com.wfb.csts.emp.model;

import javax.persistence.Cacheable;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Cacheable(false)
@Table(name = "carmodel") 
public class Carmodel {
	
	@Id
	private Integer carid;
	private Integer eid;
	private String manufacturer;
	private Integer carnumber;
	private String car_model;
	
	
	public Integer getCarid() {
		return carid;
	}
	public void setCarid(Integer carid) {
		this.carid = carid;
	}
	public Integer getEid() {
		return eid;
	}
	public void setEid(Integer eid) {
		this.eid = eid;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public Integer getCarnumber() {
		return carnumber;
	}
	public void setCarnumber(Integer carnumber) {
		this.carnumber = carnumber;
	}
	public String getCar_model() {
		return car_model;
	}
	public void setCar_model(String car_model) {
		this.car_model = car_model;
	}
	
	
	
	
	
	

}
