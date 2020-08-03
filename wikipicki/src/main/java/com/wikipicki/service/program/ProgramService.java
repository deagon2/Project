package com.wikipicki.service.program;

import java.util.List;

import org.springframework.stereotype.Service;

import com.wikipicki.service.domain.Program;

@Service
public interface ProgramService {

	//�����¼� ��Ȳ��ȸ
	public List<Program > getSeat(Program program)throws Exception;
	//�ڸ�����
	public Program updateSeat(Program program)throws Exception;
	//��ǰ�ֹ�
	public Program buyProduct(Program program)throws Exception;
	//�¼�����
	public void addSeat(Program program)throws Exception;

	public List<Program>getFranSeat(Program program) throws Exception;
}
