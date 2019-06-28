package org.ams.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.ams.dao.AccountDao;
import org.ams.model.Account;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
@Service
@Transactional(readOnly=true)
public class CustomUserDetailsService implements UserDetailsService {
     
    @Autowired
    private AccountDao accountDAO;    
 
    public UserDetails loadUserByUsername(String email)
            throws UsernameNotFoundException {
         
        Account domainUser = accountDAO.getAccountByEmail(email);
         
        boolean enabled = true;
        boolean accountNonExpired = true;
        boolean credentialsNonExpired = true;
        boolean accountNonLocked = true;
 
        return new User(
                domainUser.getEmail(), 
                domainUser.getPassword(), 
                enabled, 
                accountNonExpired, 
                credentialsNonExpired, 
                accountNonLocked,
                getAuthorities(domainUser.getRole().getId())
        );
    }
     
    public Collection<? extends GrantedAuthority> getAuthorities(Integer role) {
        List<GrantedAuthority> authList = getGrantedAuthorities(getRoles(role));
        return authList;
    }
     
    public List<String> getRoles(Integer role) {
 
        List<String> roles = new ArrayList<String>();
 
        if (role.intValue() == 1) {
            roles.add("ROLE_STUDENT");
        } else if (role.intValue() == 2) {
        	 roles.add("ROLE_COACH");
	    } else if (role.intValue() == 3) {
	    	 roles.add("ROLE_ADMIN");
	    	 roles.add("ROLE_STUDENT");
	    	 roles.add("ROLE_COACH");
	    }
        return roles;
    }
     
    public static List<GrantedAuthority> getGrantedAuthorities(List<String> roles) {
        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
         
        for (String role : roles) {
            authorities.add(new SimpleGrantedAuthority(role));
        }
        return authorities;
    }
 
}
