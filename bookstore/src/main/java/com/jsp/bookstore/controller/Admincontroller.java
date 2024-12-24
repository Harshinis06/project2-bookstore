package com.jsp.bookstore.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.bookstore.dao.AdminDao;
import com.jsp.bookstore.dao.BookDetailsDao;
import com.jsp.bookstore.entities.Admin;
import com.jsp.bookstore.entities.Bookdetails;

@Controller
public class Admincontroller {
	 @Autowired
		AdminDao admindao;
	 @Autowired
		BookDetailsDao bookdeatilsdao;
	 
	 @RequestMapping("/saveadmin")
	 public String addadmin(ServletRequest req) {
	     String name=req.getParameter("name");
	     String email=req.getParameter("email");
	     String password=req.getParameter("password");
	       
	     Admin a=new Admin();
	     a.setName(name);
	     a.setEmail(email);
	     a.setPassword(password);
	     
	     admindao.saveAdmin(a);
	     return "loginadmin";
	 }
	 @RequestMapping("/loggedinadmin")
	 public ModelAndView login(ServletRequest req) {
		 String email=req.getParameter("email");
		 String password=req.getParameter("password");
		 Admin admin=admindao.adminLogin(email, password);

		 if(admin==null) {
			 ModelAndView mav=new ModelAndView("loginadmin");
				mav.addObject("message","Invalidcredentials");
				return mav;
		 }
		 else {
			 List<Bookdetails> bookdetailsList = bookdeatilsdao.viweAllBookDetails();
			 ModelAndView mav=new ModelAndView("adminhome");
			 List<byte[]> images = new ArrayList<>();
			    for (Bookdetails book : bookdetailsList) {
			        byte[] image = bookdeatilsdao.getImageById(book.getId());
			        images.add(image);
			    }
			    mav.addObject("admin", admin);
			    mav.addObject("bookdetails", bookdetailsList);
			    mav.addObject("images", images);
			    return mav;
		 }
}
}
