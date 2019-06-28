package org.ams.model;

import java.util.HashSet;
import java.util.Set;


import javax.persistence.Entity;
import javax.persistence.FetchType;

import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;


@Entity
@Table(name = "ProLanguage")
public class PLanguage {
	@Id
	private String idProLanguage;

	private String nameofProLanguage;

	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "ProLanguageofStudent", 
	    joinColumns = {@JoinColumn(name = "idProLanguage")}, 
	    inverseJoinColumns = {@JoinColumn(name = "idStudent") })
	  private Set<Student> student = new HashSet<>();

	public String getIdProLanguage() {
		return idProLanguage;
	}

	public void setIdProLanguage(String idProLanguage) {
		this.idProLanguage = idProLanguage;
	}

	public String getNameofProLanguage() {
		return nameofProLanguage;
	}

	public void setNameofProLanguage(String nameofProLanguage) {
		this.nameofProLanguage = nameofProLanguage;
	}

	public Set<Student> getStudent() {
		return student;
	}

	public void setStudent(Set<Student> student) {
		this.student = student;
	}
	
	
}