package egovframework.example.eju.service;

import java.util.List;
import java.util.Map;

public interface EjuService {

	@SuppressWarnings("rawtypes")
	List<Map> selectPieChartList() throws Exception;

}
