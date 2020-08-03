package com.wikipicki.service.fran;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.wikipicki.common.Search;
import com.wikipicki.service.domain.Fran;


	public interface FranService {

		public List<Fran> getFranInfo(Fran fran) throws Exception;
}