package com.wikipicki.service.program.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wikipicki.common.Search;
import com.wikipicki.service.domain.Comment;
import com.wikipicki.service.domain.FreeBoard;
import com.wikipicki.service.domain.Program;
import com.wikipicki.service.main.MainDAO;
import com.wikipicki.service.main.MainService;
import com.wikipicki.service.program.ProgramDAO;
import com.wikipicki.service.program.ProgramService;

@Service
public class ProgramServiceImpl implements ProgramService{
	
		@Resource
		private ProgramDAO programDAO;
		
		public ProgramServiceImpl() {
		}
		
		@Autowired	
		public ProgramServiceImpl(ProgramDAO programDAO) {
			this.programDAO = programDAO;
		}
		
		
///////////////////////////////////�옄�쑀寃뚯떆�뙋///////////////////////////////////////
		

	@Override
	public List<Program> getSeat(Program program) throws Exception {
		return programDAO.getSeat(program);
	}

	@Override
	public Program updateSeat(Program program) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Program buyProduct(Program program) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Program> getFranSeat(Program program) throws Exception {
		return programDAO.getFranSeat(program);
	}

	@Override
	public void addSeat(Program program) throws Exception {
		// TODO Auto-generated method stub
		
	}


	
}
