package egovframework.example.eju6.service.impl;

import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;


@Mapper("eju6Mapper")
public interface Eju6Mapper {

	@SuppressWarnings("rawtypes")
	List<Map> selectList() throws Exception;
	
}
