package org.ams.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.JoinColumn;

@Entity
@Table(name="Role")
public class Role {
     
    @Id
    @Column(name = "id")
    private int id;
     
    @Column(name = "role")
    private String role;
     
    @OneToMany(cascade=CascadeType.ALL)
    @JoinTable(name="Account_Role", 
        joinColumns = {@JoinColumn(name="idRole", referencedColumnName="id")},
        inverseJoinColumns = {@JoinColumn(name="idAccount", referencedColumnName="idAccount")}
    )
    private Set<Account> accountRoles;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Set<Account> getAccountRoles() {
		return accountRoles;
	}

	public void setAccountRoles(Set<Account> accountRoles) {
		this.accountRoles = accountRoles;
	}
 
   
}
