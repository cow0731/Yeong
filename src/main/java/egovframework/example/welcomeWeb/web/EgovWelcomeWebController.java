package egovframework.example.welcomeWeb.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.jqgridTable.service.JqgridVO;
import egovframework.example.jqgridTable.web.EgovJqgridController;
import egovframework.example.welcomeWeb.service.WelcomeWebService;

//메소드들을 포함하는 블럭
@Controller
public class EgovWelcomeWebController {

	@Resource(name = "welcomeWebService")
	private WelcomeWebService welcomeWebService;
	
	@Resource(name = "egovJqgridController")
	private EgovJqgridController egovJqgridController;
	
	/**
	 * 웰컴 웰컴 이동한다.
	 * @return String
	 * @throws Exception
	 */
	@SuppressWarnings("rawtypes")
	@RequestMapping(value = "/welcomeWeb.do")
	public String welcomeWeb(ModelMap model) throws Exception {
		//modelMap은 view페이지로 값을 전달하기 위한 역할
		//어떤 작업을 처리하는 실행문들을 모아놓은 블럭
		
		Map<String, Object> addMap1 = new HashMap<String, Object>();
		List<Map> welcomeWebList = welcomeWebService.selectWelcomeWebServiceList(addMap1);
		
		System.out.println(welcomeWebList);
		
		for(int i=0; i<welcomeWebList.size(); i++) {
			if(welcomeWebList.get(i).get("country").equals("한국")) {
				
				Map<String, Object> addMap = new HashMap<String, Object>();
				addMap.put("country", "남한");
				addMap.put("id", welcomeWebList.get(i).get("id"));
				addMap.put("userName", welcomeWebList.get(i).get("userName"));
				addMap.put("age", welcomeWebList.get(i).get("age"));
				addMap.put("etc", welcomeWebList.get(i).get("etc"));
				welcomeWebList.set(i, addMap);
			}
		}
		
		for(int i=0; i<welcomeWebList.size(); i++) {
			if(welcomeWebList.get(i).get("userName").equals("뿌꾸빵")) {
				
				Map<String, Object> addMap = new HashMap<String, Object>();
				addMap.put("id", welcomeWebList.get(i).get("id"));
				addMap.put("userName", "백소영");
				addMap.put("age", "20");
				addMap.put("country", "한국");
				addMap.put("etc", "열심히 할게요 ㅎ");
				welcomeWebList.set(i, addMap);
			}
		}
		
		for(int i=0; i<welcomeWebList.size(); i++) {
			if(welcomeWebList.get(i).get("age").equals("16")) {
				
				Map<String, Object> addMap = new HashMap<String, Object>();
				addMap.put("id", welcomeWebList.get(i).get("id"));
				addMap.put("userName", "소영");
				addMap.put("age", "20");
				addMap.put("country", "미국에서");
				addMap.put("etc", "살고 싶다");
				welcomeWebList.set(i, addMap);
			}
		}
		List<Map> pieChartList = welcomeWebService.selectPieChartList();
		
		System.out.println(pieChartList);
		
		model.addAttribute("welcomeWebList", 	welcomeWebList);
		model.addAttribute("pieChartList", 		pieChartList);
		
		//EgovJqgridController egocontroll = new EgovJqgridController();
		//egocontroll.aaa();
		egovJqgridController.aaa();
		JqgridVO vo = new JqgridVO();
		vo.setAdress("merong");
		System.out.println(vo.getAdress());
		
		return "welcomeWeb/welcomeWeb.tiles";
	}
}
