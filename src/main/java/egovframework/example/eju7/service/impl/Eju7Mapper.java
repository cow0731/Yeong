package egovframework.example.eju7.service.impl;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;


@Mapper("eju7Mapper")
public interface Eju7Mapper {

	List<?> selectMainMenu() throws Exception;
	List<?> selectSubMenu(String menuId) throws Exception;
	
}
