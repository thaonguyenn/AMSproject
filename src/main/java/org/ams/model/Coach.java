package org.ams.model;



import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;

import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

@Entity
@Table(name = "Coach")
public class Coach {
	@Id
	private String idCoach;

	@Column(name = "emailOfCoach")
	private String emailOfCoach;

	
	@Column(name = "password", nullable = false)
	private String password;

	
	@Column(name = "name", nullable = false)
	private String name;

	
	@Column(name = "department", nullable = false)
	private String department;

	
	@Column(name = "telephone", nullable = false)
	private String telephone;

	
	@Column(name = "status", nullable = false)
	private int status;
	
	@OneToMany
	@LazyCollection(LazyCollectionOption.FALSE)
	@JoinColumn(name = "idCoach")
	List<Request> request;
	
	@OneToMany
	@LazyCollection(LazyCollectionOption.FALSE)
	@JoinColumn(name = "idCoach")
	List<Transactions> transaction;
	
	@OneToMany
	@LazyCollection(LazyCollectionOption.FALSE)
	@JoinColumn(name = "idCoach")
	List<Contract> contract;
	
	
	public List<Contract> getContract() {
		return contract;
	}

	public void setContract(List<Contract> contract) {
		this.contract = contract;
	}

	public List<Request> getRequest() {
		return request;
	}

	public void setRequest(List<Request> request) {
		this.request = request;
	}

	public List<Transactions> getTransaction() {
		return transaction;
	}

	public void setTransaction(List<Transactions> transaction) {
		this.transaction = transaction;
	}

	public String getIdCoach() {
		return idCoach;
	}

	public void setIdCoach(String idCoach) {
		this.idCoach = idCoach;
	}
	public String getEmailOfCoach() {
		return emailOfCoach;
	}

	public void setEmailOfCoach(String emailOfCoach) {
		this.emailOfCoach = emailOfCoach;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	

}