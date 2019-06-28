package org.ams.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Account")
public class Account {
	@Id
	@Column(name = "idAccount")
	String idAccount;
	
	String email;
	
	String password;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinTable(name="Account_Role",
	        joinColumns = {@JoinColumn(name="idAccount", referencedColumnName="idAccount")},
	        inverseJoinColumns = {@JoinColumn(name="idRole", referencedColumnName="id")}
	    )
	private Role role;

	@OneToOne
	@JoinColumn(name = "idAccount", nullable = false)
    private Student student;

	public String getIdAccount() {
		return idAccount;
	}

	public void setIdAccount(String idAccount) {
		this.idAccount = idAccount;
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
	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

}