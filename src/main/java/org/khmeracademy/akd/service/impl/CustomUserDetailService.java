package org.khmeracademy.akd.service.impl;

import org.khmeracademy.akd.entity.User;
import org.khmeracademy.akd.entity.UserLogin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service("CustomUserDetailService")
public class CustomUserDetailService implements UserDetailsService{

	@Autowired
	private UserServiceImpl userService;
	
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		UserLogin login = new UserLogin();
		login.setEmail(email);
		User user = userService.findUserByEmail(login);
		if(user == null){
			System.out.println("User not found");
			throw new UsernameNotFoundException("User not found");
		}
		System.out.println("ROLE NAME " + user.getRoles().get(0).getRoleName());
		return user;
	}
}
