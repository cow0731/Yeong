package egovframework.example.eju.service.impl;

import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;


@Mapper("ejuMapper")
public interface EjuMapper {

	@SuppressWarnings("rawtypes")
	List<Map> selectPieChartList() throws Exception;
	
}
