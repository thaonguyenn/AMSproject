package org.ams.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "Level")
public class Level {
	
	@Id
	@NotNull
	@Column(name = "idLevel")
	private String idLevel;
	
	@Column(name = "levelQ")
	private String levelQ;
	
	public String getIdLevel() {
		return idLevel;
	}
	public void setIdLevel(String idLevel) {
		this.idLevel = idLevel;
	}
	public String getLevelQ() {
		return levelQ;
	}
	public void setLevelQ(String levelQ) {
		this.levelQ = levelQ;
	}
	
}
