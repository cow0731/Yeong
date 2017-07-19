package egovframework.example.eju2.service.impl;

import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;


@Mapper("eju2Mapper")
public interface Eju2Mapper {

	@SuppressWarnings("rawtypes")
	List<Map> selectWelcomeWebServiceList() throws Exception;

}
