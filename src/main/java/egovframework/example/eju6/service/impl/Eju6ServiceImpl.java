package egovframework.example.eju6.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.eju.service.EjuService;
import egovframework.example.eju6.service.Eju6Service;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("eju6Service")
public class Eju6ServiceImpl extends EgovAbstractServiceImpl implements Eju6Service {

	@Resource(name="eju6Mapper")
	private Eju6Mapper eju6Mapper;
	
	/*@SuppressWarnings("rawtypes")
	@Override
	public List<Map> selectPieChartList() throws Exception {

		return ejuMapper.selectPieChartList();
	}*/

	@SuppressWarnings("rawtypes")
	@Override
	public List<Map> selectList() throws Exception {

		return eju6Mapper.selectList();
	}


	
}