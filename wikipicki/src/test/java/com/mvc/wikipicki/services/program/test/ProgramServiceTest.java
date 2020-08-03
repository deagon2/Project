package com.mvc.wikipicki.services.program.test;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.wikipicki.service.domain.Fran;
import com.wikipicki.service.domain.FreeBoard;
import com.wikipicki.service.domain.Program;
import com.wikipicki.service.main.MainDAO;
import com.wikipicki.service.program.ProgramDAO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
		"classpath:config/common-context.xml",
		"classpath:config/mybatis-context.xml",
		"classpath:config/transaction-context.xml",
		"classpath:mappers/program-mapper.xml"
		})

public class ProgramServiceTest {

	private static final Logger logger = LoggerFactory.getLogger(ProgramServiceTest.class);
	
	@Autowired
	private ProgramDAO programDAO;
	
	@Test
	public void addSeat() throws Exception {
		for(int i = 49 ; i < 79 ; i++) {
			for(int d = 1 ; d < 102; d++) {
		Program program = new Program();
		program.setFranNo(i);
		program.setSeatNo(d);
		programDAO.addSeat(program);
		}
	}
}
	
	
	
}

