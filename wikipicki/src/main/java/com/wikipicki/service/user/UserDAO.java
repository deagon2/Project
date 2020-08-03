package com.wikipicki.service.user;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.wikipicki.common.Search;
import com.wikipicki.service.domain.User;

@Mapper
public interface UserDAO{
	
	//INSERT
	public void addUser(User user) throws Exception;
	
	//SELECT ONE
	public User getUser(String userId) throws Exception;
	
	public User getMypage(String userId) throws Exception;
	
	public List<User> getUserId(User user) throws Exception;
	
	public User login(String userId) throws Exception;
	
	//SELECT LIST
	public List<User> getUserList(Map<String, Object> map) throws Exception;
	 
	public List<User> getFranUserList(Map<String, Object> map) throws Exception;
	 
	//UPDATE
	public void updateUser(User user) throws Exception;
	
	public User updatePassword(String userId) throws Exception;
	
	//check
	public User checkDuplication(String userId) throws Exception;
	
	//카카오 연동
	public void updateUserkakao(User user)  throws Exception;

	//카카오로그인
	public User loginkakao(String kakaoId)  throws Exception;
}
