package egovframework.example.bootstrap.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 설명         : 
 * File name  	: BootstrapController.java 
 * Package      : egovframework.example.bootstrap.web
 * Project name : Yeong
 * Type name   	: BootstrapController
 * Company      : hanq
 * 최초생성일자 : 2016 2016. 12. 4. 오전 1:21:57
 * @author      : cow07
 * File Version : v1.0
 */
@Controller
public class BootstrapController {
	
	/**
	  * <PRE>
	  * 배열을 화면단으로 넘김
	  * </PRE>
	  * @date : 2016. 12. 4.
	  * @param request
	  * @param model
	  * @return
	  */
	@RequestMapping(value = "/bootstrap.do")
	public String pageBootStrap(HttpServletRequest request, Model model) {
		
		String[] arr = request.getParameterValues("array");
		
		for(int i = 0; i < arr.length; i++) {
			
			System.out.println(arr[i]);
		};
		
		model.addAttribute("array", arr);
		
		return "bootstrap/bootstrap.tiles2";
	}
}
