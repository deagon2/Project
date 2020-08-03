package com.wikipicki.service.user;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.wikipicki.common.Search;
import com.wikipicki.service.domain.User;


public interface UserService {

	//INSERT - user sign up
	public void addUser(User user) throws Exception;
	
	//SELECT ONE - login/info/myinfo
	public User getUser(String userId) throws Exception;
	
	public User getMypage(String userId) throws Exception;
	
	public List<User> getUserId(User user) throws Exception;
	
	public User login(String userId) throws Exception;
	
	//SELECT LIST - thumb nail list
	public List<User> getUserList(Map<String, Object> map) throws Exception;
	
	public List<User> getFranUserList(Map<String, Object> map) throws Exception;
	
	//UPDATE - info/myinfo/
	public void updateUser(User user) throws Exception;
	
	//new pwd wd' be given by sms
	public User updatePassword(String userId) throws Exception;

	
	//check
	public User checkDuplication(String userId) throws Exception;
	
	public boolean tosAgreement(String userId) throws Exception;
	
	public boolean snsConnect(String userId) throws Exception;
	
	
	//sms
	public void sendSMS(String phone) throws Exception;
	
	public boolean checkSMS(String phone, String confirmNum) throws Exception;
	
	//카카오 연동
	public void updateUserkakao(User user) throws Exception;

	//카카오로그인
	public User loginkakao(String kakaoId) throws Exception;
}

