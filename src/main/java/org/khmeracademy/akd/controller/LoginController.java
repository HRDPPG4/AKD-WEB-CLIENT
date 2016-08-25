package org.khmeracademy.akd.controller;

import org.khmeracademy.akd.entity.User;
import org.khmeracademy.akd.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
	
	@Autowired
	private UserRepository userRepository;	//We can call userservice if we have
	
	
	@RequestMapping(value="/LoginSubmit",method=RequestMethod.POST)
	public String login(@RequestParam("username") String username,@RequestParam("password") String password){
		
		System.out.println("Username: "+username);
		System.out.println("Password: "+password);
		
		User user=userRepository.login(username, password);
		// Spring Still don't know that user lgoin or not
		// So we need to set session
		
		
		System.out.println(user);
		
		if(user!=null){																		//Printciple, password		,Role
			UsernamePasswordAuthenticationToken auth = new UsernamePasswordAuthenticationToken(user, user.getPassword(), user.getAuthorities());
			auth.setDetails(user);
			SecurityContextHolder.getContext().setAuthentication(auth);	//	SET SESSION FOR SPRING
			System.out.println("login success!");
		
			if(user.getRole().equalsIgnoreCase("admin"))
				return "redirect:/admin/dashboard";
			
			else if(user.getRole().equalsIgnoreCase("dba"))
				return "redirect:/dba/index";
			
			else if(user.getRole().equalsIgnoreCase("user"))
				return "redirect:/";
			else
				return "redirect:/accessDenied";
		}
		return "redirect:/accessDenied";
		
		// IF WE WANT TO USE OBJECT TO GET ROLE AND USER IN SPRING WE NEED TAGELIB LIBRARY AND SECURITY TAGLIB DEPENDENCY
		
		
	}
}
