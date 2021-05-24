package com.watchdogs.command.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.watchdogs.command.home.BCommand;
import com.watchdogs.dao.he.ReviewDao;
import com.watchdogs.dto.he.ReviewDto;

public class ReviewModifyCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		System.out.println("ReviewModifyCommand 완료");
		
		

		/*/
		 * 2021.05.18 권효은
		 * 후기 수정 
		 * 수정을 위해 입력되어있는 값 가져오기
		 */
		//input tag에 있는 값들을 받아오기
		String retitle = request.getParameter("retitle");
		String recontent = request.getParameter("recontent");
		String reid = request.getParameter("reid");
		

		
		ReviewDao dao = new ReviewDao();
		//2줄추가 다시 정보 불러오기
		ReviewDto dto = dao.reviewDetail(reid);	
		request.setAttribute("reviewdetail", dto);

		dao.reviewModify(retitle, recontent, reid);
		
		
		
		
		
		
	}

}
