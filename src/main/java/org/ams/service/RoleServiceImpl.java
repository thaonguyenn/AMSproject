package org.ams.service;

import javax.transaction.Transactional;

import org.ams.dao.RoleDao;
import org.ams.model.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class RoleServiceImpl implements RoleService {
     
    @Autowired
    private RoleDao roleDAO;
 
    public Role getRole(int id) {
        return roleDAO.getRole(id);
    }
}