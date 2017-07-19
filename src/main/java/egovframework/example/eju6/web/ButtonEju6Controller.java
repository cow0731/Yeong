package egovframework.example.eju6.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ButtonEju6Controller {
	
	@RequestMapping(value = "/six.do")
	public String pageBootStrap(HttpServletRequest request, Model model) {
		
		return "eju6/six1.tiles";
	}
}
