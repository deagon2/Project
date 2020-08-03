package com.wikipicki.service.fran.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;


import com.wikipicki.common.Search;
import com.wikipicki.service.domain.Fran;
import com.wikipicki.service.fran.FranDAO;
import com.wikipicki.service.fran.FranService;

@Service
public class FranServiceImpl implements FranService {

	
	
	private FranDAO franDAO;
	
	@Autowired
	public void setFranDAO(FranDAO franDAO)	{
		this.franDAO = franDAO;
	}
	

	@Override
	public List<Fran> getFranInfo(Fran fran) throws Exception {
		return franDAO.getFranInfo(fran);
	}


	
	
}