package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import classes.Book;
import classes.UserValidator;
import classes.Users;
import dao.LibDao;


@Controller
public class LibController {

	@Autowired
	private LibDao libdao;
	private UserValidator userValidator;
	@InitBinder
	   protected void initBinder(WebDataBinder binder) {
	      binder.addValidators(userValidator);
	   }

	@RequestMapping(value = "/adduser", method = RequestMethod.POST)
	public ModelAndView addUserInfo(@ModelAttribute("userinfo")@ Validated Users userinfo, BindingResult result) {
		
		if(result.hasErrors())
			return new ModelAndView("welcome");

		libdao.addUserInfo(userinfo);
		return new ModelAndView("welcome");
	}

	@RequestMapping(value = "/addbook", method = RequestMethod.POST)
	ModelAndView addBookInfo(@ModelAttribute("bookinfo") Book bookinfo, BindingResult result) {
		libdao.addBookInfo(bookinfo);
		return new ModelAndView("bookadded", "bookad", bookinfo);

	}

	@RequestMapping(value = "/ulogin", method = RequestMethod.POST)
	ModelAndView userlogin(@ModelAttribute("users") Users user, BindingResult result) {
		
		
		int k = libdao.userlogin(user.getUsername(), user.getPassword());
		
		if (k == 1) {
			String username = user.getUsername();
			System.out.println(username);
			List<Users> id=libdao.userdetails(username);
			return new ModelAndView("userdata", "user", id);
		}
		return new ModelAndView("welcome");
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	ModelAndView login(@ModelAttribute("users") Users user, BindingResult result, HttpSession session) {
		String sid = session.getId();
		int k = libdao.userlogin(user.getUsername(), user.getPassword());
		if (k == 1) {
			return new ModelAndView("dashboard", "sid", sid);
		}
		return new ModelAndView("welcome");
	}

	@RequestMapping(value = "/userinfo", method = RequestMethod.GET)
	ModelAndView userinfo() {
		List<Users> li = new ArrayList<>();
		li = libdao.getUserInfo();
		return new ModelAndView("userinfo", "userlist", li);
	}

	@RequestMapping(value = "/auserinfo", method = RequestMethod.GET)
	ModelAndView adminuserinfo() {
		List<Users> li = new ArrayList<>();
		li = libdao.getUserInfo();
		return new ModelAndView("auserinfo", "userlist", li);
	}

	@RequestMapping(value = "/bookinfo", method = RequestMethod.GET)
	ModelAndView bookinfo() {
		List<Book> bi = new ArrayList<>();
		bi = libdao.getBookInfo();
		return new ModelAndView("bookinfo", "booklist", bi);
	}

	@RequestMapping(value = "/ubookinfo", method = RequestMethod.GET)
	ModelAndView ubookinfo() {
		
		List<Book> bi = new ArrayList<>();
		bi = libdao.getBookInfo();
		return new ModelAndView("ubookinfo", "booklist", bi);
	}

	@RequestMapping(value = "/bookedinfo", method = RequestMethod.GET)
	ModelAndView bookedinfo() {
		List<Book> be = new ArrayList<>();
		be = libdao.getBookedInfo();
		return new ModelAndView("Bookedinfo", "bookedlist", be);
	}

	@RequestMapping(value = "/username", method = RequestMethod.GET)
	ModelAndView username(@RequestParam(value = "username") String username) {
		List<Book> be = new ArrayList<>();
		be = libdao.getbyusername(username);
		return new ModelAndView("usernameinfo", "list", be);
	}

	@RequestMapping(value = "/bookname", method = RequestMethod.GET)
	ModelAndView bookname(@RequestParam(value = "bookname") String bookname) {
		List<Book> be = new ArrayList<>();
		be = libdao.getbybookname(bookname);
		return new ModelAndView("bybookname", "list", be);
	}

	@RequestMapping(value = "/duedate", method = RequestMethod.GET)
	ModelAndView duedate(@RequestParam(value = "duedate") String duedate) {
		List<Book> be = new ArrayList<>();
		be = libdao.getbyduedate(duedate);
		return new ModelAndView("byduedate", "list", be);
	}

	@RequestMapping(value = "/borroweddate", method = RequestMethod.GET)
	ModelAndView bdate(@RequestParam(value = "bdate") String bdate) {
		System.out.println(bdate);
		List<Book> be = new ArrayList<>();
		be = libdao.getbybdate(bdate);
		return new ModelAndView("bybdate", "list", be);
	}

	@RequestMapping(value = "/category", method = RequestMethod.GET)
	ModelAndView category(@RequestParam(value = "category") String category) {
		List<Book> be = new ArrayList<>();
		be = libdao.getbycategory(category);
		return new ModelAndView("bycategory", "list", be);
	}

	@RequestMapping(value = "/author", method = RequestMethod.GET)
	ModelAndView author(@RequestParam(value = "author") String author) {
		List<Book> be = new ArrayList<>();
		be = libdao.getbyauthor(author);
		return new ModelAndView("byauthor", "list", be);
	}

	@RequestMapping(value = "/Ubookname", method = RequestMethod.GET)
	public ModelAndView ubookname(@RequestParam(value = "bookname") String bookname) {
		System.out.println(bookname);
		List<Book> be = new ArrayList<>();
		be = libdao.getbyubookname(bookname);
		return new ModelAndView("byubookname", "list", be);
	}

	@RequestMapping(value = "/logout")
	ModelAndView logout(HttpSession session) {
		session.invalidate();
		return new ModelAndView("logout");
	}

	@RequestMapping(value = "/bookdetails", method = RequestMethod.GET)
	ModelAndView bookdetails(@RequestParam(value = "Id") String bookiD) {
		System.out.println(bookiD);
		List<Book> be = new ArrayList<>();
		be = libdao.getBookDetails(bookiD);
		return new ModelAndView("bookdetails", "list", be);
	}

	@RequestMapping(value = "/ubookdetails", method = RequestMethod.GET)
	ModelAndView ubookdetails(@RequestParam(value = "Id") String bookiD) {
		System.out.println(bookiD);
		List<Book> be = new ArrayList<>();
		be = libdao.getBookDetails(bookiD);
		return new ModelAndView("ubookdetails", "list", be);
	}

	@RequestMapping(value = "/addQ", method = RequestMethod.GET)
	ModelAndView updatebook(@RequestParam(value = "quantity") int quantity, @RequestParam(value = "q") int q,
			@RequestParam(value = "Id") String bookId) {

		int quant = q + quantity;
		libdao.updatebook(quant, bookId);
		List<Book> bi = new ArrayList<>();
		bi = libdao.getBookInfo();
		return new ModelAndView("bookinfo", "booklist", bi);
	}

	@RequestMapping(value = "/uhistroy", method = RequestMethod.GET)
	ModelAndView histroy(@RequestParam(value = "Id") String username) {
		List<Book> u = new ArrayList<>();
		System.out.println(username);
		u = libdao.histroy(username);
		System.out.println(u);
		return new ModelAndView("uuserinfo", "history", u);
	}

	@RequestMapping(value = "/addbook", method = RequestMethod.GET)
	ModelAndView addbook(@RequestParam(value = "userId") int userid, @RequestParam(value = "BId") int bid) {
		System.out.println("qwertyu");
		libdao.addBook(userid, bid);
		return ubookinfo();

	}

	@RequestMapping(value = "/returnbook", method = RequestMethod.GET)
	ModelAndView returnbook(@RequestParam(value = "BId") String bid, @RequestParam(value = "userId") String userid,
			@RequestParam(value = "username") String username) {

		libdao.returnBook(userid, bid);

		return histroy(username);

	}

}
