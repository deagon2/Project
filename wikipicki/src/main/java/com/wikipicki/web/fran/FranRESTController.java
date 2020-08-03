
package com.wikipicki.web.fran;

import java.util.HashMap;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.wikipicki.service.domain.Fran;
import com.wikipicki.service.fran.FranService;


@RestController
@RequestMapping("/fran/rest/")
public class FranRESTController {
	
	private FranService franService;
	
	@Autowired
	public FranRESTController(FranService franService) {
		this.franService = franService;
	}
	
	
	@RequestMapping(value = "/getFranInfo", method = RequestMethod.POST )
	public Map<String, Object> getFranInfo(Fran fran) throws Exception {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("data", franService.getFranInfo(fran));
		return map;
	}	

	
	
}
