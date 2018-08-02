package poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	// link tới trang
		@RequestMapping("index")
		public String index() {
			return"index/index";
		}
		//
		@RequestMapping("home")
		public String home() {
			return"home/index";
		}
		
		@RequestMapping("admin")
		public String demo() {
			return"admin/home";
		}

}
