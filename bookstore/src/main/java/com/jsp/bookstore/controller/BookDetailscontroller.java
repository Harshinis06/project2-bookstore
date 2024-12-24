package com.jsp.bookstore.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.bookstore.dao.BookDetailsDao;
import com.jsp.bookstore.entities.Bookdetails;

@Controller
public class BookDetailscontroller {
	  
  @Autowired
	BookDetailsDao bookdeatilsdao;
  @RequestMapping("/addbooks")
  public ModelAndView createbook() {
	  ModelAndView mav=new ModelAndView("addbook");
	  Bookdetails bookdetails=new Bookdetails();
	  mav.addObject("bookdetail",bookdetails);
	  return mav;
  }
  @RequestMapping("/savebook")
  public String savebooks(@ModelAttribute("bookdetail") Bookdetails bookdetails,@RequestParam("picture") MultipartFile picture){
	  try {
          if (!picture.isEmpty()) {
              byte[] imageBytes = picture.getBytes();
              bookdetails.setImage(imageBytes);
          }
          bookdeatilsdao.saveBook(bookdetails);
          return "addbook";
      } catch (IOException e) {
          e.printStackTrace();   
          return "addbook";
      }
  }
  @RequestMapping("/viewall")
  public ModelAndView viewallproducts() {
	 List<Bookdetails> bookdetailsList=bookdeatilsdao.viweAllBookDetails();
	 ModelAndView mav=new ModelAndView("viewlist");
	 List<byte[]> images = new ArrayList<>();
	 for (Bookdetails book : bookdetailsList) {
         byte[] image = bookdeatilsdao.getImageById(book.getId());
         images.add(image);
     }
	 mav.addObject("bookdetails", bookdetailsList);
     mav.addObject("images", images);
	 return mav;
  }
@RequestMapping("/editproduct")
public ModelAndView editbook(@RequestParam("id") int id) {
	Bookdetails bk=bookdeatilsdao.viewBookdetailsById(id);
	ModelAndView mav=new ModelAndView("updatebook");
	mav.addObject("bookedit",bk);
	return mav;
}
//@RequestMapping("/updatebook")
//public ModelAndView updatebook(ServletRequest req) {
//	String id=req.getParameter("bookId");
//	String bookName=req.getParameter("bookN");
//	String bookco=req.getParameter("costb");
//	String language=req.getParameter("lang");
//	String authorName=req.getParameter("authorN");
//	String booktype=req.getParameter("bookT");
//	String file=req.getParameter("picture");
//	Bookdetails bk=new Bookdetails();
//	bk.setId(Integer.parseInt(id));
//	bk.setBookName(bookName);
//	bk.setCost(Double.parseDouble(bookco));
//	bk.setLanguage(language);
//	bk.setType(booktype);
//	bk.setAuthorName(authorName);
//	bk.setImage(file.getBytes());
//	bookdeatilsdao.updateBookDetails(bk);
//	ModelAndView mav=new ModelAndView("redirect://viewall");
//	return mav;
//}
}
