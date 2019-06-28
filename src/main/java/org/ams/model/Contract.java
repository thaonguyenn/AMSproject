package org.ams.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Contract")
public class Contract {
	@Id
	private String idContract;
	@ManyToOne(fetch =FetchType.EAGER)
	@JoinColumn(name = "idCoach")
	private Coach coach;
	@ManyToOne(fetch =FetchType.EAGER)
	@JoinColumn(name = "idStudent")
	private Student student;
	
	private String nameContract;
	
	private Date startTime;
	
	private Date endTime;
	
	private String content;

	public String getIdContract() {
		return idContract;
	}

	public void setIdContract(String idContract) {
		this.idContract = idContract;
	}

	public Coach getCoach() {
		return coach;
	}

	public void setCoach(Coach coach) {
		this.coach = coach;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public String getNameContract() {
		return nameContract;
	}

	public void setNameContract(String nameContract) {
		this.nameContract = nameContract;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	

}