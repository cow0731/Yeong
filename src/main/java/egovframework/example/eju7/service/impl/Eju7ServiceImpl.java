package egovframework.example.eju7.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.eju7.service.Eju7Service;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("eju7Service")
public class Eju7ServiceImpl extends EgovAbstractServiceImpl implements Eju7Service {

	@Resource(name="eju7Mapper")
	private Eju7Mapper eju7Mapper;

	@Override
	public List<?> selectMainMenu() throws Exception {

		return eju7Mapper.selectMainMenu();
	}

	@Override
	public List<?> selectSubMenu(String menuId) throws Exception {

		return eju7Mapper.selectSubMenu(menuId);
	}


	
}