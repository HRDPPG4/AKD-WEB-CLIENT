package org.khmeracademy.akd.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class UserController {
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String findAll(){
		return "index";
	}
	
	@RequestMapping(value="/feature/{filter}", method=RequestMethod.GET)
	public String feature(@PathVariable("filter") String filter, ModelMap model){
		//System.out.println("ID==>" + id);
		model.put("filter", filter);
		return "user/feature";
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
	
	@RequestMapping(value="/userAccount",method=RequestMethod.GET)
	public String user(){
		return "user/user";
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
	
	@RequestMapping(value="/user/feature",method=RequestMethod.GET)
	public String feature11(){
		return "user/featured";
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView method() {
		return new ModelAndView("redirect:" + "http://120.136.24.174:13300/login?continue-site=http://localhost:2222");

    }
	
}

