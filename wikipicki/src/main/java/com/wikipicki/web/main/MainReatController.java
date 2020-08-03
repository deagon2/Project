package com.wikipicki.web.main;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.wikipicki.service.domain.Comment;
import com.wikipicki.service.main.MainService;


@RestController
@RequestMapping("/main/rest/*")
public class MainReatController {
	
	@Autowired
	MainService mainService;
	
	public MainReatController() {
		System.out.println(this.getClass());
	}
	
	@RequestMapping(value = "/getCommentList", method = RequestMethod.POST)
	public List<Comment> getCommentList(@RequestParam("boardNo") int boardNo) throws Exception {
		return mainService.getCommentList(boardNo);

	}
	
	@RequestMapping(value = "/addComment", method = RequestMethod.POST)

	public Map<String, Object> addComment(@RequestBody Comment comment , HttpSession session) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		try {
			mainService.addComment(comment);
			result.put("status", "OK");
		} catch (Exception e) {
			e.printStackTrace();
			result.put("status", "False");
			session.setAttribute("UserId", "use87");
		}
		return result;
	}
	
	@RequestMapping(value = "/updateComment", method = RequestMethod.POST )
	public Map<String, Object> updateComment(@RequestBody Comment comment) throws Exception {
		Map<String, Object> result = new HashMap<String, Object>();
		try {
			mainService.updateComment(comment);
			result.put("status", "OK");
		} catch (Exception e) {
			e.printStackTrace();
			result.put("status", "False");
		}
		return result;
	}
	
	@RequestMapping(value = "/deleteComment", method = RequestMethod.POST )
	public Map<String, Object> deleteComment(@RequestParam("commentNo") int commentNo) throws Exception {
	Map<String, Object> result = new HashMap<String, Object>();
		try {
			mainService.deleteComment(commentNo);
			result.put("status", "OK");
		} catch (Exception e) {
			e.printStackTrace();
			result.put("status", "False");
		}
		return result;
		}

}
