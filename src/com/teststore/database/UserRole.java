package com.teststore.database;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the user_roles database table.
 * 
 */
@Entity
@Table(name="user_roles")
@NamedQuery(name="UserRole.findAll", query="SELECT u FROM UserRole u")
public class UserRole implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private String name;

	//bi-directional many-to-one association to SiteUser
	@OneToMany(mappedBy="userRole")
	private List<SiteUser> siteUsers;

	public UserRole() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<SiteUser> getSiteUsers() {
		return this.siteUsers;
	}

	public void setSiteUsers(List<SiteUser> siteUsers) {
		this.siteUsers = siteUsers;
	}

	public SiteUser addSiteUser(SiteUser siteUser) {
		getSiteUsers().add(siteUser);
		siteUser.setUserRole(this);

		return siteUser;
	}

	public SiteUser removeSiteUser(SiteUser siteUser) {
		getSiteUsers().remove(siteUser);
		siteUser.setUserRole(null);

		return siteUser;
	}

}