package egovframework.example.eju7.service;

import java.util.List;

public interface Eju7Service {

	List<?> selectMainMenu() throws Exception;

	List<?> selectSubMenu(String menuId) throws Exception;

}
