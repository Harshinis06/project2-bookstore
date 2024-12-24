//package com.jsp.bookstore.controller;
//
//import javax.servlet.ServletRequest;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.servlet.ModelAndView;
//
//import com.jsp.bookstore.dao.AdminDao;
//import com.jsp.bookstore.dao.UserDao;
//import com.jsp.bookstore.entities.Admin;
//import com.jsp.bookstore.entities.User;
//
//@Controller
//public class SignupController {
//	 @Autowired
//		AdminDao admindao;
//	 @Autowired
//		UserDao userdao;
//	 
//	 
//	 @RequestMapping("/addmembers")
//	 public ModelAndView addUser() {
//		 ModelAndView mav=new ModelAndView("userregister" );
//		 User user=new User();
//		 mav.addObject("users",user);
//		 return mav;
//	 }
//	 @RequestMapping("/saveuser")
//		public ModelAndView saveUser(@ModelAttribute("users") User user) {
//			ModelAndView mav=new ModelAndView("userregister");
//			mav.addObject("msg","user signed up successfully");
//			 userdao.saveUser(user);
//		    return mav;
//		}
//	 @RequestMapping("/saveadmin")
//	 public String addadmin(ServletRequest req) {
//	     String name=req.getParameter("name");
//	     String email=req.getParameter("email");
//	     String password=req.getParameter("password");
//	       
//	     Admin a=new Admin();
//	     a.setName(name);
//	     a.setEmail(email);
//	     a.setPassword(password);
//	     
//	     admindao.saveAdmin(a);
//	     return "loginadmin";
//	 }
//	 @RequestMapping("/loggedinadmin")
//	 public ModelAndView login(ServletRequest req) {
//		 String email=req.getParameter("email");
//		 String password=req.getParameter("password");
//		 Admin admin=admindao.adminLogin(email, password);
//		 
//		 if(admin==null) {
//			 ModelAndView mav=new ModelAndView("loginadmin");
//				mav.addObject("message","Invalidcredentials");
//				return mav;
//		 }
//		 else {
//			 ModelAndView mav=new ModelAndView("adminhome");
//				//mav.addObject("message","Invalidcredentials");
//				return mav;
//		 }
//	 }
//}
