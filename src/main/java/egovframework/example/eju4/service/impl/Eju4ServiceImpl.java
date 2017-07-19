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
package egovframework.example.eju4.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.antlr.grammar.v3.ANTLRParser.throwsSpec_return;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import egovframework.example.eju4.service.Eju4Service;
import egovframework.example.eju4.service.Eju4VO;
import egovframework.example.jqgridTable.service.JqgridService;
import egovframework.example.jqgridTable.service.JqgridVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service("eju4Service")
public class Eju4ServiceImpl extends EgovAbstractServiceImpl implements Eju4Service {

	private static final Logger LOGGER = LoggerFactory.getLogger(Eju4ServiceImpl.class);

	@Resource(name="eju4Mapper")
	private Eju4Mapper eju4DAO;
	
	@Override
	public List<?> selectJqgridList(Eju4VO eju4VO) throws Exception {
		
		return eju4DAO.selectJqgridList(eju4VO);
	}

	@Override
	public EgovMap selectJqgridListCnt(Eju4VO eju4VO) throws Exception {
		
		return eju4DAO.selectJqgridListCnt(eju4VO);
	}
}