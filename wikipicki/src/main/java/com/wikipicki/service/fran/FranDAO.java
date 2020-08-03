package com.wikipicki.service.fran;

import java.util.List;


import org.apache.ibatis.annotations.Mapper;

import com.wikipicki.service.domain.Fran;

@Mapper
public interface FranDAO {

	
	public List<Fran> getFranInfo(Fran fran) throws Exception;

	
}
