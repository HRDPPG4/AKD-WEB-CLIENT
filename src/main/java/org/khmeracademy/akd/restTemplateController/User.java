package org.khmeracademy.akd.restTemplateController;

import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;


@RestController
public class User {
	
	@Autowired
	private HttpHeaders headers;
	
	@Autowired
	private RestTemplate restTemplate;
	
	String url = "http://localhost:1111/api/v1/user";
	
	@RequestMapping(value = "/web/student", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> findAll(){
		HttpEntity<String> request = new HttpEntity<>(headers);
		ResponseEntity<Map> response = restTemplate.exchange(url, HttpMethod.GET, request, Map.class);
		System.out.println(response.toString());
		return new ResponseEntity<Map<String, Object>>(response.getBody(), HttpStatus.OK);
	}		
	
	@RequestMapping(value = "/web/student", method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> saveStudent(@RequestBody User user){
		System.out.println(user);
		HttpEntity<User> request = new HttpEntity<>(user, headers);
		
		ResponseEntity<Map> response = restTemplate.exchange(url, HttpMethod.POST, request, Map.class);
		System.out.println(response.toString());
		return new ResponseEntity<Map<String, Object>>(response.getBody(), HttpStatus.OK);
	}
	
	
	
	
}

