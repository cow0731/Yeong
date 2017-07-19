package egovframework.example.eju2.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.eju2.service.Eju2Service;

//메소드들을 포함하는 블럭
@Controller
public class EgovEju2Controller {

	@Resource(name = "eju2Service")
	private Eju2Service eju2Service;
	
	/**
	 * 웰컴 웰컴 이동한다.
	 * @return String
	 * @throws Exception
	 */
	@SuppressWarnings("rawtypes")
	@RequestMapping(value = "/eju2.do")
	public String welcomeWeb(ModelMap model) throws Exception {
		//modelMap은 view페이지로 값을 전달하기 위한 역할
		//어떤 작업을 처리하는 실행문들을 모아놓은 블럭
		
		
		List<Map> welcomeWebList = eju2Service.selectWelcomeWebServiceList();
		
		System.out.println(welcomeWebList);
		/*
		List<Map> pieChartList = welcomeWebService.selectPieChartList();
		
		System.out.println(pieChartList);
		*/
		model.addAttribute("welcomeWebList", 	welcomeWebList);
		/*model.addAttribute("pieChartList", 		pieChartList);*/
		
		return "eju2/eju2.tiles";
	}
}
