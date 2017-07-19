package egovframework.example.myMenu;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class myMenuController {
	
	@RequestMapping(value = "/myMenu.do")
	public String pageMyMenu() {
		return "myMenu/myMenu.tiles";
	}
}
