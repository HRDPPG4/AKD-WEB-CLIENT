package org.khmeracademy.akd.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;


@Controller
public class UserController {
	
	
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String findAll(){
		return "index";
	}
	@RequestMapping(value="/home",method=RequestMethod.GET)
	public String home(){
		return "index-01";
	}
	
	@RequestMapping(value="/feature",method=RequestMethod.GET)
	public String feature(){
		return "user/featured";
	}
	
	
	@RequestMapping(value="/search/{title}",method=RequestMethod.GET)
	public String search(@PathVariable("title") String title, ModelMap model){
		model.put("title", title);
		return "user/result-search";
	}
	
	
	@RequestMapping(value="/user_view",method=RequestMethod.GET)
	public String user_view(){
		return "user/user_view";
	}
	
	@RequestMapping(value="/user_view_history",method=RequestMethod.GET)
	public String user_view_history(){
		return "user/user_view_history";
	}
	@RequestMapping(value="/user_information",method=RequestMethod.GET)
	public String user_information(){
		return "user/user_information";
	}
	
	
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(){
		return "user/login";
	}
	
	@RequestMapping(value="/profile",method=RequestMethod.GET)
	public String profile(){
		return "user/profile";
	}
	
	
	
	@RequestMapping(value="/detail/{id}", method=RequestMethod.GET)
	public String detail(@PathVariable("id") String id, ModelMap model){
		//System.out.println("ID==>" + id);
		model.put("id", id);
		return "user/details";
	}
	
	@RequestMapping(value="/view/{ParentID}", method=RequestMethod.GET)
	public String viewPageByCategoryID(@PathVariable("ParentID") String ParentID, ModelMap model){
		//System.out.println("ID==>" + ParentID);
		model.put("ParentID", ParentID);
		return "user/viewPageByCategoryID";
	}
	
}

