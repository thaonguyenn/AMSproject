package org.ams.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;

import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Request")
public class Request {
	@Id
    @Column(name="idRequest")
	private String idRequest;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "idStudent")
	private Student student;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "idCoach")
	private Coach coach;
	private String typeOfRequest;
	
	private String Contents;
	
	public String getIdRequest() {
		return idRequest;
	}
	public void setIdRequest(String idRequest) {
		this.idRequest = idRequest;
	}
	
	
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public Coach getCoach() {
		return coach;
	}
	public void setCoach(Coach coach) {
		this.coach = coach;
	}
	public String getTypeOfRequest() {
		return typeOfRequest;
	}
	public void setTypeOfRequest(String typeOfRequest) {
		this.typeOfRequest = typeOfRequest;
	}
	public String getContents() {
		return Contents;
	}
	public void setContents(String contents) {
		Contents = contents;
	}
	

}