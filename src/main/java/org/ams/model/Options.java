package org.ams.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "Options")
public class Options {
	@Id
	@NotNull
	@Column(name = "idOption")
	private String idOption;
	
	@ManyToOne
    @JoinColumn(name = "idQuestion")
	private Question question;
	
	@Column(name = "contentO")
	private String contentO;

	public String getIdOption() {
		return idOption;
	}

	public void setIdOption(String idOption) {
		this.idOption = idOption;
	}

	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	public String getContentO() {
		return contentO;
	}

	public void setContentO(String contentO) {
		this.contentO = contentO;
	}
	
	
}
