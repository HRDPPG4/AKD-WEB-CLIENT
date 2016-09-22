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
import org.springframework.beans.factory.annotation.Qualifier;
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

	
	
	
	@Autowired
	@Qualifier("KNONGDAI_API_SECRET_HEADER")
	private HttpHeaders knongDaiSecretHeader;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	@Qualifier("KNONGDAI_API_URL")
	private String knongDaiApiUrl;
	
	@Override
	public User findUserByUserId(String userId) {

		HttpEntity<Object> request = new HttpEntity<Object>(knongDaiSecretHeader);
		
		System.out.println(knongDaiApiUrl+ "/user/"+userId);
		
		ResponseEntity<Map> response = rest.exchange(knongDaiApiUrl+ "/user/"+userId, HttpMethod.POST , request , Map.class) ;
		Map<String, Object> map = (HashMap<String, Object>)response.getBody();
		
		System.out.println(map);
		
		if(map.get("DATA") != null){
			Map<String , Object> data = (HashMap<String , Object>) map.get("DATA");
			User u = new User();
			u.setUserID((Integer)data.get("USER_ID"));
			u.setEmail((String)data.get("EMAIL"));
			u.setName((String)data.get("USERNAME"));
			u.setPassword((String) data.get("PASSWORD"));
			u.setProfile((String)data.get("USER_IAMGE_URL"));
			
			System.out.println("Image " + data.get("USER_IAMGE_URL"));
			List<Role> roles = new ArrayList<Role>();
			List<HashMap<String, Object>> dataRole = (List<HashMap<String, Object>>) data.get("ROLES");
			for (Map<String , Object> datas  : dataRole) {
				Role role = new Role();
				role.setRoleId((Integer)datas.get("ROLE_ID"));
				role.setRoleName((String) datas.get("ROLE_NAME"));
				roles.add(role);
			}
			System.out.println(dataRole);
			u.setRoles(roles);
			System.out.println(map);
			return u;
		}
		return null;
	}


	
}
