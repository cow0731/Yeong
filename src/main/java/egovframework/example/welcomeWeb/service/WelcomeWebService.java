package egovframework.example.welcomeWeb.service;

import java.util.List;
import java.util.Map;

public interface WelcomeWebService {

	/**
	 * 메인 조회
	 * @param addMap1 
	 * @return List<Map>
	 * @throws Exception
	 */
	@SuppressWarnings("rawtypes")
	List<Map> selectWelcomeWebServiceList(Map<String, Object> addMap1) throws Exception;

	/**
	 * 차트 조회
	 * @return List<Map>
	 * @throws Exception
	 */
	@SuppressWarnings("rawtypes")
	List<Map> selectPieChartList() throws Exception;
}
