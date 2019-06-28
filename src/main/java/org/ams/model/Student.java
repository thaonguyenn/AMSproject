package org.ams.model;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.Transaction;
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

@Entity
@Table(name = "Student")
public class Student {
	@Id
	@Column(name = "idStudent")
	String idStudent;

	@ManyToOne(fetch =FetchType.EAGER)
	@JoinColumn(name = "idEducation")
	private Education education;

	@Column(name = "fullName")
	String fullName;

	@ManyToMany(fetch =FetchType.EAGER)
	@JoinTable(name = "ProLanguageofStudent", joinColumns = { @JoinColumn(name = "idStudent") }, inverseJoinColumns = {
			@JoinColumn(name = "idProLanguage") })
	private Set<PLanguage> language = new HashSet<>();
	String dateofbirth;

	String TOEFLscore;

	String softSkill;

	int status;

	int onlineTestScore;

	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "idAccount")
	private Account account;
	
	@OneToMany
	@JoinColumn(name = "idStudent")
	@LazyCollection(LazyCollectionOption.FALSE)
	List<Request> request;
	
	@OneToMany
	@LazyCollection(LazyCollectionOption.FALSE)
	@JoinColumn(name = "idStudent")
	List<Transactions> transaction;
	
	private int tested;
	
	@OneToMany
	@LazyCollection(LazyCollectionOption.FALSE)
	@JoinColumn(name = "idStudent")
	List<Contract> contract;
	
	public int getTested() {
		return tested;
	}

	public void setTested(int tested) {
		this.tested = tested;
	}

	public List<Contract> getContract() {
		return contract;
	}

	public void setContract(List<Contract> contract) {
		this.contract = contract;
	}

		public List<Transactions> getTransaction() {
		return transaction;
	}

	public void setTransaction(List<Transactions> transaction) {
		this.transaction = transaction;
	}

		public List<Request> getRequest() {
		return request;
	}

	public void setRequest(List<Request> request) {
		this.request = request;
	}

		public String getDateofbirth() {
		return dateofbirth;
	}

	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}

	
	public String getTOEFLscore() {
		return TOEFLscore;
	}

	public void setTOEFLscore(String tOEFLscore) {
		TOEFLscore = tOEFLscore;
	}

	public String getSoftSkill() {
		return softSkill;
	}

	public void setSoftSkill(String softSkill) {
		this.softSkill = softSkill;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getOnlineTestScore() {
		return onlineTestScore;
	}

	public void setOnlineTestScore(int onlineTestScore) {
		this.onlineTestScore = onlineTestScore;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public String getDateOfbirth() {
		return dateofbirth;
	}

	public void setDateOfbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}

	public Set<PLanguage> getLanguage() {
		return language;
	}

	public void setLanguage(Set<PLanguage> language) {
		this.language = language;
	}

	public String getIdStudent() {
		return idStudent;
	}

	public void setIdStudent(String idStudent) {
		this.idStudent = idStudent;
	}

	public Education getEducation() {
		return education;
	}

	public void setEducation(Education education) {
		this.education = education;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

}