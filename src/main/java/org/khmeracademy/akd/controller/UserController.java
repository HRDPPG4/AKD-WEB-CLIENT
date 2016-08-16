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
	
	@RequestMapping(value="/technology",method=RequestMethod.GET)
	public String technology(){
		return "user/technology";
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
	
	@RequestMapping(value="/general-knowledge",method=RequestMethod.GET)
	public String generalKnowledge(){
		return "user/general_knowledge";
	}
	
	@RequestMapping(value="/literal",method=RequestMethod.GET)
	public String literal(){
		return "user/literal";
	}
	
	@RequestMapping(value="/business",method=RequestMethod.GET)
	public String business(){
		return "user/business";
	}
	
	@RequestMapping(value="/other",method=RequestMethod.GET)
	public String other(){
		return "user/other";
	}
	
	
	
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(){
		return "user/login";
	}
	
	
	
	
	
	
	
	
	
	@RequestMapping(value="/detail",method=RequestMethod.GET)
	public String details(@RequestParam("url") String url, ModelMap model){
		model.put("url", url);
		System.out.print(url);
		return "user/details";
	}
	
	@RequestMapping(value="/detail/{id}", method=RequestMethod.GET)
	public String detail(@PathVariable("id") String id, ModelMap model){
		System.out.println("ID==>" + id);
		model.put("id", id);
		return "user/details";
	}
	
	/*@RequestMapping(value="/detail",method=RequestMethod.GET)
	public String details(){
		return "user/details";
	}*/
	
}
