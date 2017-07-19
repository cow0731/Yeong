package egovframework.example.eju.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.eju.service.EjuService;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("ejuService")
public class EjuServiceImpl extends EgovAbstractServiceImpl implements EjuService {

	@Resource(name="ejuMapper")
	private EjuMapper ejuMapper;
	
	@SuppressWarnings("rawtypes")
	@Override
	public List<Map> selectPieChartList() throws Exception {

		return ejuMapper.selectPieChartList();
	}


	
}