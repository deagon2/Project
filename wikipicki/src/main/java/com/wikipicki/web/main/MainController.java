package com.wikipicki.web.main;


import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.wikipicki.common.Search;
import com.wikipicki.service.domain.Comment;
import com.wikipicki.service.domain.FreeBoard;
import com.wikipicki.service.main.MainService;
import com.wikipicki.service.program.ProgramService;

@Controller
@RequestMapping("/main/*")
public class MainController {

	@Autowired
	MainService mainService;
	ProgramService programService;

	public MainController() {
		System.out.println(this.getClass());
	}

	@RequestMapping(value = "getFreeBoardList", method=RequestMethod.GET)
	    public String getFreeBoardList(Model model,
	    								FreeBoard freeBoard,
							    		@RequestParam(defaultValue = "1") int page,
							    		@RequestParam(defaultValue = "1") int range,
							    		 @RequestParam(required = false, defaultValue = "title") String searchType
										, @RequestParam(required = false) String keyword
							    		) throws Exception {
		Search search = new Search();
		search.setSearchType(searchType);
		search.setKeyword(keyword);

		int listCnt = mainService.getFreeBoardListAll(search);
		
		search.pageInfo2(page, range, listCnt);
		model.addAttribute("pagination",search);
		model.addAttribute("FreeBoard",mainService.getFreeBoardList(search));
		return "/main/listFreeBoard.jsp";
	}
	
	
	@RequestMapping(value ="addFreeBoard", method = RequestMethod.GET)
	public String addFreeboard(HttpSession session) {
		session.setAttribute("UserId", "use87");
		return "/main/addFreeBoard.jsp";
	}

	
	@RequestMapping(value="addFreeBoard", method=RequestMethod.POST)
	public String addFreeBoard(@RequestParam(value="files", required = false)
	MultipartFile mf ,FreeBoard freeBoard, HttpServletRequest request, HttpServletResponse response ,HttpSession session) throws Exception{
		System.out.println("Userid :" +mf);
		if(mf != null) {
			System.out.println("fileName : "+ mf);
			System.out.println("FreeBard : "+freeBoard);
			
			String savePath = "D:\\git\\Wikipicki\\Wikipicki\\WebContent\\resources\\images\\FreeBoardImages";
			
			String originalFileName = mf.getOriginalFilename();
			long fileSize = mf.getSize();
			String safeFile = savePath+"\\"+originalFileName;
			
			System.out.println("originalFileName : "+originalFileName);
			System.out.println("fileSize : "+fileSize);
			System.out.println("safeFile : "+safeFile);
				
			try {
				mf.transferTo(new File(safeFile));
			} catch(IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			session.setAttribute("UserId", "use87");
			freeBoard.setImgFile(originalFileName);
		}
		mainService.addFreeBoard(freeBoard);
		return "/main/getFreeBoard.jsp";
	}
	
	@RequestMapping(value = "getFreeBoard", method = RequestMethod.GET)
	public String getFreeBoard(Model model, @RequestParam("boardNo") int boardNo, HttpSession session) throws Exception {
		model.addAttribute("freeBoard", mainService.getFreeBoard(boardNo));
		model.addAttribute("comment", new Comment());
		session.setAttribute("UserId", "use87");
		return "/main/getFreeBoard.jsp";

	}
	
	@RequestMapping(value ="updateFreeBoard", method = RequestMethod.POST)
	public String updateFreeBoard(@RequestParam(value="files", required = false)
	MultipartFile mf ,FreeBoard freeBoard, HttpServletRequest request, HttpServletResponse response ,HttpSession session) throws Exception {
		System.out.println("Userid :" +mf);
		if(mf != null) {
			System.out.println("fileName : "+ mf);
			System.out.println("FreeBard : "+freeBoard);
			
			String savePath = "D:\\git\\Wikipicki\\Wikipicki\\WebContent\\resources\\images\\FreeBoardImages";
			
			String originalFileName = mf.getOriginalFilename();
			long fileSize = mf.getSize();
			String safeFile = savePath+"\\"+originalFileName;
			
			System.out.println("originalFileName : "+originalFileName);
			System.out.println("fileSize : "+fileSize);
			System.out.println("safeFile : "+safeFile);
				
			try {
				mf.transferTo(new File(safeFile));
			} catch(IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			freeBoard.setImgFile(originalFileName);
		}
		
		mainService.updateFreeBoard(freeBoard);
		
		return "redirect:/main/getFreeBoardList";
	}

	@RequestMapping(value ="updateFreeBoard", method = RequestMethod.GET)
	public String updateFreeBoard(Model model, int boardNo, HttpSession session) throws Exception {
		session.setAttribute("UserId", "use87");
		model.addAttribute("FreeBoard", mainService.getFreeBoard(boardNo));
	
		return "/main/updateFreeBoard.jsp";
	}
	
	@RequestMapping(value = "/deleteFreeBoard", method = RequestMethod.GET)
	public String deleteBoard(RedirectAttributes rttr, @RequestParam("boardNo") int boardNo) throws Exception {
		mainService.deleteFreeBoard(boardNo);
		return "redirect:/main/getFreeBoardList";
	}


	//¸Ê
	@RequestMapping(value = "getFranMap", method = RequestMethod.GET)
	public String getFranMap(Model model) throws Exception {
		return "/main/getFranMap.jsp";
	}
	
	
	//ÀÚ¸®¿¹¾à
	@RequestMapping(value = "seat", method = RequestMethod.GET)
	public String addSeat (Model model) throws Exception {
		return "/main/seat.jsp";
	}


	
}
