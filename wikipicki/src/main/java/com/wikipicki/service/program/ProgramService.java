package com.wikipicki.service.program;

import java.util.List;

import org.springframework.stereotype.Service;

import com.wikipicki.service.domain.Program;

@Service
public interface ProgramService {

	//현재좌석 현황조회
	public List<Program > getSeat(Program program)throws Exception;
	//자리예약
	public Program updateSeat(Program program)throws Exception;
	//상품주문
	public Program buyProduct(Program program)throws Exception;
	//좌석생성
	public void addSeat(Program program)throws Exception;

	public List<Program>getFranSeat(Program program) throws Exception;
}
