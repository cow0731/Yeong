package egovframework.example.eju2.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.eju2.service.Eju2Service;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("eju2Service")
public class Eju2ServiceImpl extends EgovAbstractServiceImpl implements Eju2Service {

	@Resource(name="eju2Mapper")
	private Eju2Mapper eju2Mapper;
	
	@SuppressWarnings("rawtypes")
	@Override
	public List<Map> selectWelcomeWebServiceList() throws Exception {

		return eju2Mapper.selectWelcomeWebServiceList();
	}

}