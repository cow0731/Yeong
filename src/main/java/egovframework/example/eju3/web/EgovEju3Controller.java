/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package egovframework.example.eju3.web;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import egovframework.example.cmmn.JsonUtil;
import egovframework.example.eju3.service.Eju3Service;
import egovframework.example.eju3.service.Eju3VO;
import egovframework.example.jqgridTable.service.JqgridService;
import egovframework.example.jqgridTable.service.JqgridVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

// 메소드들을 포함하는 블럭
@Controller
public class EgovEju3Controller {

	@Resource(name = "eju3Service")
	private Eju3Service eju3Service;
	
	/**
	 * tiles jqgrid 화면 호출하면서 jstl로 조회
	 * @param jqgridVO
	 * @param model
	 * @return String
	 * @throws Exception
	 */
	@RequestMapping(value = "/eju3.do")
	public String jqgridP2(Eju3VO eju3VO, ModelMap model) throws Exception {
		
		List<?> jstlList = eju3Service.selectJstlList(eju3VO);

		model.addAttribute("jstlList", 	jstlList);
		
		return "eju3/eju3.tiles";
	}
	
}
