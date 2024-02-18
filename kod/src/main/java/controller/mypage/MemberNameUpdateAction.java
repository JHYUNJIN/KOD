package controller.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.util.Action;
import controller.util.ActionForward;
import model.dao.MemberDAO;
import model.dto.MemberDTO;

public class MemberNameUpdateAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 새로운 ActionForward 객체생성
		 ActionForward forward = new ActionForward();
	      
		 
		// MemberDAO,MemberDTO 객체 생성
	      MemberDTO mDTO = new MemberDTO();
	      MemberDAO mDAO = new MemberDAO();
	     
	      System.out.println(request.getParameter("memberName") + "[본승] 로그 이름");
	      
	   // session 객체를 생성
		  HttpSession session=request.getSession();
	      
		
	      
	      mDTO.setSearchCondition("이름변경");
	      mDTO.setMemberName(request.getParameter("memberName"));
	      mDTO.setMemberID(((MemberDTO)session.getAttribute("memberDTO")).getMemberID());
	      System.out.println(request.getParameter("memberName") + "[본승] 로그 이름");
	      
		
	      
	      // mDAO.update 메서드 실행 인자로(mDTO)를 가져감
	      // 실행후 결과값 논리형 변수 falg에 저장
	      boolean flag = mDAO.update(mDTO);
	      
	      // flag값이 true라면
	      if(flag) {	// 로그아웃 
	         forward.setRedirect(false);
	         forward.setPath("alertMyPage.do");
	         request.setAttribute("msg", "정보변경에 성공하였습니다!");
	         
	      }else { // 아니라면 이전페이지로 이동
	    	  forward.setRedirect(false);
		      forward.setPath("goback.do");
	      }
	     
	      
		 
		return forward;
	}

}