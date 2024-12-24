package com.jsp.bookstore.controller;

import javax.servlet.ServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.bookstore.dao.UserDao;
import com.jsp.bookstore.entities.Admin;
import com.jsp.bookstore.entities.User;
@Controller
public class Usercontroller {
	 @Autowired
		UserDao userdao;
	 
	 @RequestMapping("/addmembers")
	 public ModelAndView addUser() {
		 ModelAndView mav=new ModelAndView("userregister" );
		 User user=new User();
		 mav.addObject("users",user);
		 return mav;
	 }
	 @RequestMapping("/saveuser")
		public ModelAndView saveUser(@ModelAttribute("users") User user) {
			ModelAndView mav=new ModelAndView("userregister");
			mav.addObject("msg","user signed up successfully");
			 userdao.saveUser(user);
		    return mav;
		}
	 @RequestMapping("/loggedinUser")
	 public ModelAndView login(ServletRequest req) {
		 String email=req.getParameter("email");
		 String password=req.getParameter("password");
		 User user=userdao.userLogin(email, password);
		 
		 if(user==null) {
			 ModelAndView mav=new ModelAndView("UserLogin");
				mav.addObject("message","Invalidcredentials");
				return mav;
		 }
		 else {
			 ModelAndView mav=new ModelAndView("home");
//				mav.addObject("message","login");
				return mav;
		 }
	 }
}
