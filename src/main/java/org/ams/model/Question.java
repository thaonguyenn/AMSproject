package org.ams.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "Question")
public class Question {
	
	@Id
	@NotNull
	@Column(name = "idQuestion")
	private String idQuestion;
	
	@Column(name = "idType")
	private String idType;
	
	@Column(name = "idLevel")
	private String idLevel;
	
	@Column(name = "contentQ")
	private String contentQ;
	
	@OneToMany(fetch = FetchType.EAGER, mappedBy="question")
	private List<Options> options;
	
//	@OneToOne(fetch = FetchType.EAGER, mappedBy="questionOfKey")
//	private Key key;
	
	public String getIdQuestion() {
		return idQuestion;
	}

	public void setIdQuestion(String idQuestion) {
		this.idQuestion = idQuestion;
	}

	public String getIdType() {
		return idType;
	}

	public void setIdType(String idType) {
		this.idType = idType;
	}

	public String getIdLevel() {
		return idLevel;
	}

	public void setIdLevel(String idLevel) {
		this.idLevel = idLevel;
	}

	public String getContentQ() {
		return contentQ;
	}

	public List<Options> getOptions() {
		return options;
	}

	public void setOptions(List<Options> options) {
		this.options = options;
	}

	public void setContentQ(String contentQ) {
		this.contentQ = contentQ;
	}

//	public Key getKey() {
//		return key;
//	}
//
//	public void setKey(Key key) {
//		this.key = key;
//	}

	
	
}
