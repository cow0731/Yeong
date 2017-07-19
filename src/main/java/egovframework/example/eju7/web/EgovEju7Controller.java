package egovframework.example.eju7.web;

import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.example.cmmn.JsonUtil;
// import egovframework.example.welcomeWeb.service.WelcomeWebService;
import egovframework.example.eju7.service.Eju7Service;

@Controller
public class EgovEju7Controller {
	
	@Resource(name = "eju7Service")
	private Eju7Service eju7Service;
	
	@RequestMapping(value = "/mainMenuList.do")
	public void mainMenuList(HttpServletRequest request,
			HttpServletResponse response,
			@ModelAttribute ModelMap model) throws Exception {
		
		PrintWriter out = null;
		response.setCharacterEncoding("UTF-8");
		
		List<?> menuList = eju7Service.selectMainMenu();
		
		out = response.getWriter();
		
		out.write(JsonUtil.ListToJson(menuList));
	}
	
	@RequestMapping(value = "/subMenuList.do")
	public void subMenuList(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam String menuId,
			@ModelAttribute ModelMap model) throws Exception {
		
		PrintWriter out = null;
		response.setCharacterEncoding("UTF-8");
		
		List<?> menuList = eju7Service.selectSubMenu(menuId);
		
		out = response.getWriter();
		
		out.write(JsonUtil.ListToJson(menuList));
	}
}
