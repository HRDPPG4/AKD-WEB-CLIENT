package org.khmeracademy.akd.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.khmeracademy.akd.entity.Role;
import org.khmeracademy.akd.entity.User;
import org.khmeracademy.akd.entity.UserLogin;
import org.khmeracademy.akd.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;


@Service
public class UserServiceImpl implements UserService {

	@Override
	public User findUserByEmail(UserLogin userlogin) {
		
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		
		RestTemplate rest = new RestTemplate();
		
		System.out.println(userlogin.getEmail());
		
		HttpEntity<Object> request = new HttpEntity<Object>(userlogin,headers);
		ResponseEntity<Map> response = rest.exchange("http://localhost:1111/api/v1/user/email", HttpMethod.POST , request , Map.class) ;
		Map<String, Object> map = (HashMap<String, Object>)response.getBody();
		
		if(map.get("DATA") != null){
			Map<String , Object> data = (HashMap<String , Object>) map.get("DATA");
			User u = new User();
			u.setUserID((Integer)data.get("USER_ID"));
			u.setEmail((String)data.get("EMAIL"));
			u.setName((String)data.get("USER_NAME"));
			u.setPassword((String) data.get("PASSWORD"));
			
			List<Role> roles = new ArrayList<Role>();
			
			Role role = new Role();
			role.setRoleName((String) data.get("USER_ROLE"));
			roles.add(role);
			
			u.setRoles(roles);
			
			System.out.println(map);
			return u;
		}
		return null;
	}

	
}
