package com.wikipicki.service.program;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.wikipicki.service.domain.Fran;
import com.wikipicki.service.domain.FreeBoard;
import com.wikipicki.service.domain.Program;


@Mapper
public interface ProgramDAO {

		
		//�����¼� ��Ȳ��ȸ
		public List<Program>getSeat(Program program)throws Exception;
		//�ڸ�����
		public Program updateSeat(Program program)throws Exception;
		//��ǰ�ֹ�
		public Program buyProduct(Program program)throws Exception;
		//�¼�����
		public void addSeat(Program program)throws Exception;
	
		public List<Program>getFranSeat(Program program) throws Exception ;
	}


