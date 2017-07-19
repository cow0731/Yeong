package egovframework.example.eju6.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.eju.service.EjuService;
// import egovframework.example.welcomeWeb.service.WelcomeWebService;
import egovframework.example.eju6.service.Eju6Service;

//메소드들을 포함하는 블럭
@Controller
public class EgovEju6Controller {
	
	// 이 컨트롤러에서 EjuService를 쓰겠다.
	@Resource(name = "eju6Service")
	private Eju6Service eju6Service;
	
	/**
	 * 웰컴 웰컴 이동한다.
	 * @return String
	 * @throws Exception
	 */
	@SuppressWarnings("rawtypes")		// 경고 무시
	@RequestMapping(value = "/eju6.do")
	public String ejuMain(ModelMap model) throws Exception {
		
		/*List<Map> welcomeWebList = welcomeWebService.selectWelcomeWebServiceList();
		
		System.out.println(welcomeWebList);*/
		
		/*List<Map> pieChartList = ejuService.selectPieChartList();
		
		System.out.println(pieChartList);*/
		
		// model.addAttribute("welcomeWebList", 	welcomeWebList);
		// model.addAttribute("pieChartList", pieChartList);
		
		List<Map> yukList = eju6Service.selectList();
		System.out.println(yukList);
		
		model.addAttribute("eju6List", yukList);
		
		return "eju6/eju6.tiles";
	}
}
