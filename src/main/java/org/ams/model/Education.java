package org.ams.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;

import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name = "Education")
public class Education implements Serializable{
	private static final long serialVersionUID = 1L;
	
	 @Id
	 @Column(name = "idEducation")
	 private String idEducation;

	@Column(name = "nameOfEducation")
	private String name;
	@OneToMany(fetch = FetchType.EAGER)
	@JoinColumn(name = "idEducation")
	List<Student> listStudent;
	
	public String getIdEducation() {
		return idEducation;
	}

	public void setIdEducation(String idEducation) {
		this.idEducation = idEducation;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getId() {
		return idEducation;
	}

	


	public List<Student> getListStudent() {
		return listStudent;
	}

	public void setListStudent(List<Student> listStudent) {
		this.listStudent = listStudent;
	}

	public void setId(String idEducation) {
		this.idEducation = idEducation;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
}