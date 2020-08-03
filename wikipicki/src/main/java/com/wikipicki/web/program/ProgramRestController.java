package com.wikipicki.web.program;



import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.wikipicki.service.domain.Program;
import com.wikipicki.service.program.ProgramService;


@RestController
@RequestMapping("/program/rest/")
public class ProgramRestController {
	
	@Autowired
	ProgramService programService;
	
	public ProgramRestController() {
		System.out.println(this.getClass());
	}
	
	@RequestMapping(value = "/getSeat", method = RequestMethod.POST)
	public  Map<String, Object> getSeat(Program program) throws Exception {
		System.out.println("들어왔나?");
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("data", programService.getSeat(program));
		System.out.println(map);
		return map;
	}
	
	@RequestMapping(value = "/getFranSeat", method = RequestMethod.POST)
	public  Map<String, Object> getFranSeat(Program program) throws Exception {
		System.out.println("들어왔나?");
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("data", programService.getFranSeat(program));
		System.out.println(map);
		return map;
	}

}
