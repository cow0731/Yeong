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
package egovframework.example.eju4.web;

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
import egovframework.example.eju4.service.Eju4Service;
import egovframework.example.eju4.service.Eju4VO;
import egovframework.example.jqgridTable.service.JqgridService;
import egovframework.example.jqgridTable.service.JqgridVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

// 메소드들을 포함하는 블럭
@Controller
public class Eju4Controller {

	@Resource(name = "eju4Service")
	private Eju4Service eju4Service;

	
	/**
	 * tiles jqgrid 화면 호출하면서 jstl로 조회
	 * @param jqgridVO
	 * @param model
	 * @return String
	 * @throws Exception
	 */
	@RequestMapping(value = "/eju4.do")
	public String jqgridP2(Eju4VO eju4VO, ModelMap model) throws Exception {
		
		return "eju4/eju4.tiles";
	}


	
	@RequestMapping(value = "/eju4Table.do")
	public void jqgridTable2(HttpServletRequest request,
			HttpServletResponse response,
			@ModelAttribute Eju4VO eju4VO, ModelMap model) throws Exception {

		PrintWriter out = null;
		response.setCharacterEncoding("UTF-8");

		String quotZero = request.getParameter("param");
		
		quotZero = quotZero.replaceAll("&quot;", "\"");
		
		Map<String, Object> castMap = new HashMap<String, Object>();
		
		castMap = JsonUtil.JsonToMap(quotZero);
		
		eju4VO.setServiceImplYn((String) castMap.get("serviceImplYn"));

		List<?> jqGridList = eju4Service.selectJqgridList(eju4VO);
		
		EgovMap jqGridListCnt = eju4Service.selectJqgridListCnt(eju4VO);

		HashMap<String, Object> resMap = new HashMap<String, Object>();
		
		resMap.put("records", jqGridListCnt.get("totalTotCnt"));            
        resMap.put("rows",    jqGridList);
        resMap.put("page",    request.getParameter("page"));
        resMap.put("total",   jqGridListCnt.get("totalPage"));
		
		out = response.getWriter();

		out.write(JsonUtil.HashMapToJson(resMap).toString());
	}

	
}
