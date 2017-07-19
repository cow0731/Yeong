package egovframework.example.eju.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.eju.service.EjuService;
// import egovframework.example.welcomeWeb.service.WelcomeWebService;

//메소드들을 포함하는 블럭
@Controller
public class EgovEjuController {
	
	// 이 컨트롤러에서 EjuService를 쓰겠다.
	@Resource(name = "ejuService")
	private EjuService ejuService;
	
	/**
	 * 웰컴 웰컴 이동한다.
	 * @return String
	 * @throws Exception
	 */
	@SuppressWarnings("rawtypes")		// 경고 무시
	@RequestMapping(value = "/eju.do")
	public String ejuMain(ModelMap model) throws Exception {
		//modelMap은 view페이지로 값을 전달하기 위한 역할
		//어떤 작업을 처리하는 실행문들을 모아놓은 블럭
		
		
		/*List<Map> welcomeWebList = welcomeWebService.selectWelcomeWebServiceList();
		
		System.out.println(welcomeWebList);*/
		
		List<Map> pieChartList = ejuService.selectPieChartList();
		
		System.out.println(pieChartList);
		
		// model.addAttribute("welcomeWebList", 	welcomeWebList);
		model.addAttribute("pieChartList", pieChartList);
		
		return "eju/eju.tiles";
	}
}
