package org.ams.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "Keys")
public class Keys {

	@Id
	@NotNull
	@Column(name = "idKey")
	private String idKey;
	
//	@OneToOne
//    @JoinColumn(name = "idQuestion")
	@Column(name = "idQuestion")
	private String questionOfKey;
	
	@Column(name = "contentK")
	private String contentK;

	public String getIdKey() {
		return idKey;
	}

	public void setIdKey(String idKey) {
		this.idKey = idKey;
	}

	public String getQuestionOfKey() {
		return questionOfKey;
	}

	public void setQuestionOfKey(String questionOfKey) {
		this.questionOfKey = questionOfKey;
	}

	public String getContentK() {
		return contentK;
	}

	public void setContentK(String contentK) {
		this.contentK = contentK;
	}
	
	
}
