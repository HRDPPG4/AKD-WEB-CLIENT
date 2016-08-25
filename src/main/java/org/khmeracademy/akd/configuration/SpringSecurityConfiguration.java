package org.khmeracademy.akd.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;

@Configuration
@EnableWebSecurity
public class SpringSecurityConfiguration extends WebSecurityConfigurerAdapter{
	/*@Override
	protected void configure(AuthenticationManagerBuilder auth)throws Exception {			
		auth.inMemoryAuthentication()
			.withUser("admin").password("admin").roles("ADMIN");

		auth.inMemoryAuthentication()
			.withUser("dba").password("dba").roles("DBA");
		
		auth.inMemoryAuthentication()
			.withUser("user").password("user").roles("USER");
	}*/
	
	/*@Autowired
	@Qualifier(value="CustomUserDetailService")
	private UserDetailsService userDetailsService;*/
	
	@Autowired
	protected void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		/*auth.inMemoryAuthentication().withUser("admin").password("123").roles("ADMIN");
		auth.inMemoryAuthentication().withUser("user").password("123").roles("USER");
		auth.inMemoryAuthentication().withUser("dba").password("123").roles("ADMIN", "USER" , "DBA");
		auth.inMemoryAuthentication().withUser("dev").password("dev").roles("DEVELOPER");*/

		//auth.userDetailsService(userDetailsService);
			//.passwordEncoder(passwordEncoder());
		
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		/*http
			.authorizeRequests()
			.antMatchers("/" , "/home" , "/about").permitAll()
			.antMatchers("/admin/**").hasRole("ADMIN")
			.antMatchers("/user/**").hasRole("USER")
			.antMatchers("/dba/**").hasAnyRole("ADMIN","USER" , "DBA")
			.antMatchers("/swagger-ui.html/**").hasAnyRole("ADMIN","USER" , "DBA", "DEVELOPER");*/
		
		http.authorizeRequests()
			.antMatchers("/admin/**").hasRole("ADMIN")	//FOLDER ADMIN CAN ACCESS ONLY ROLE ADMIN
			.antMatchers("/dba/**").hasAnyRole("DBA","ADMIN")
			.antMatchers("/user/**").hasAnyRole("USER","DBA","ADMIN");
		
		http
			.formLogin()
			.loginPage("/login")
			.usernameParameter("username")
			.passwordParameter("password")
			.permitAll();
		
		http.csrf().disable();
	//	http.exceptionHandling().accessDeniedPage("/access-denied");
		http.exceptionHandling().accessDeniedPage("/accessDenied");
	}
	
	
	
	
	
	
/*	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http.csrf().disable();
		
		http.formLogin()
			.loginPage("/login")
			.usernameParameter("username")
			.passwordParameter("password")
			.permitAll();	//TO GO TO DEFAULT LOGIN FORM OF SPRING AND ALL USER CAN ACCESS TO THIS FORM
		
		http.authorizeRequests()
			.antMatchers("/admin/**").hasRole("ADMIN")	//FOLDER ADMIN CAN ACCESS ONLY ROLE ADMIN
			.antMatchers("/dba/**").hasAnyRole("DBA","ADMIN")
			.antMatchers("/user/**").hasAnyRole("USER","DBA","ADMIN");
	
		http.exceptionHandling().accessDeniedPage("/accessDenied");	//WHEN MEET /accessDenied
		
	}*/
}
