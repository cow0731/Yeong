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
package egovframework.example.eju3.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.antlr.grammar.v3.ANTLRParser.throwsSpec_return;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import egovframework.example.eju3.service.Eju3Service;
import egovframework.example.eju3.service.Eju3VO;
import egovframework.example.jqgridTable.service.JqgridService;
import egovframework.example.jqgridTable.service.JqgridVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service("eju3Service")
public class Eju3ServiceImpl extends EgovAbstractServiceImpl implements Eju3Service {

	private static final Logger LOGGER = LoggerFactory.getLogger(Eju3ServiceImpl.class);

	@Resource(name="eju3Mapper")
	private Eju3Mapper eju3DAO;

	@Override
	public List<?> selectJstlList(Eju3VO eju3VO) throws Exception {
		
		return eju3DAO.selectJstlList(eju3VO);
	}
}