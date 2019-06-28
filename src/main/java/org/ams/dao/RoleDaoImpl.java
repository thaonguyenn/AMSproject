package org.ams.dao;

import org.ams.model.Role;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("roleDao")
public class RoleDaoImpl implements RoleDao{

	@Autowired
	private SessionFactory sessionFactory;
	private Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }
 
    public Role getRole(int id) {
        Role role = (Role) getCurrentSession().load(Role.class, id);
        return role;
    }

}
