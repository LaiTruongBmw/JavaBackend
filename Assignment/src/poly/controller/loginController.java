package poly.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import entity.Users;
@Transactional
@SuppressWarnings("unchecked")
@Controller

public class loginController {

	@Autowired
	SessionFactory factory;
	
	@RequestMapping(value="login", method = RequestMethod.GET)
	public String login() {
		return "#";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(ModelMap model, HttpServletResponse response, @RequestParam("username") String user,
			@RequestParam("password") String pw, @RequestParam(value = "remember", defaultValue = "false") Boolean rm) {
		Cookie ckiId;
		Cookie ckiPw;
		Session session=factory.getCurrentSession();
		String hql = "From Users u where u.Username=:username and u.Password=:password ";
		Query query = session.createQuery(hql);
		query.setParameter("username", user);
		query.setParameter("password", pw);
		List<Users> ds = query.list();
//		System.out.println(ds.size());
		if (ds.size() > 0) {
			model.addAttribute("message", "Thành Công !");
			ckiId = new Cookie("uid", user);
			ckiPw = new Cookie("pwd", pw);

			// Ghi nhớ thời gian lưu cookie 10 ngày
			int expiry = 10 * 24 * 60 * 60;
			ckiId.setMaxAge(rm ? expiry : 0);
			ckiPw.setMaxAge(rm ? expiry : 0);
			response.addCookie(ckiId);
			response.addCookie(ckiPw);
			model.addAttribute("message", "Success!");
			model.addAttribute("user", ds);
			return "redirect:home.htm";
		} else {
			model.addAttribute("message", "Sai thông tin đăng nhập !");
			ckiId = new Cookie("uid", "");
			ckiPw = new Cookie("pwd", "");
			response.addCookie(ckiId);
			response.addCookie(ckiPw);

		}
		return "index/index";
	}
	//Logout
	@RequestMapping("/logout")
	public String userlogout(HttpSession session) {
		session.invalidate();
		return"index/index";
	}
}
