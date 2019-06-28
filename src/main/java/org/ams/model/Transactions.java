package org.ams.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name = "Transactions")
public class Transactions {
	@Id
	@Column(name="idTrans")
	private String idTrans;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "idCoach")
	private Coach coach;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "idStudent")
	private Student student;
	
	@Column(name="dateTrans",nullable =false)
	private Date dateTrans;
	@Column(name="status",nullable =false)
	private int status;
	
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getIdTrans() {
		return idTrans;
	}
	public void setIdTrans(String idTrans) {
		this.idTrans = idTrans;
	}
	
	public Date getDateTrans() {
		return dateTrans;
	}
	public void setDateTrans(Date dateTrans) {
		this.dateTrans = dateTrans;
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
	
	

}