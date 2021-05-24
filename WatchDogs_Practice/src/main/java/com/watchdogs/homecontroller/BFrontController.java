package com.watchdogs.homecontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.watchdogs.command.home.BCommand;
import com.watchdogs.command.home.BHomeCommand;
import com.watchdogs.command.notice.NoticeDetailViewCommand;
import com.watchdogs.command.notice.NoticeListCommand;
import com.watchdogs.command.review.ReviewDeleteCommand;
import com.watchdogs.command.review.ReviewDetailViewCommand;
import com.watchdogs.command.review.ReviewListCommand;
import com.watchdogs.command.review.ReviewMdViewCommand;
import com.watchdogs.command.review.ReviewModifyCommand;
import com.watchdogs.command.review.ReviewWriteCommand;

/**
 * Servlet implementation class BFrontController
 */
@WebServlet("*.wd")
public class BFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			System.out.println("doGet");
			actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			System.out.println("doPost");
			actionDo(request, response);
	}
	
	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	      request.setCharacterEncoding("UTF-8");
	      System.out.println("actionDo()");
	   
	      String uri = request.getRequestURI();        //   /MVCBoard/~
	      String conPath = request.getContextPath();   //   /MVCBoard
	      String com = uri.substring(conPath.length());//   /~
	      
	      String viewPage = null;
	      BCommand command = null;
	      
	      switch(com) {
	      case("/home.wd"):  // 첫 화
				command = new BHomeCommand();
				command.execute(request, response);
				viewPage ="home.jsp";
				break; 

				
		/*
		 * 2021.05.18 권효은
		 * 후기 목록 보여주기
		 */
		   case("/reviewlist.wd"):
			   command = new ReviewListCommand();
			   command.execute(request, response);
			   viewPage = "reviewlist.jsp"; 
			   break;	
		/*
		 * 2021.05.17 권효은
		 * 후기 작성화면으로 넘어가기
		 */
				
	       case("/review.wd"):	
				viewPage = "review_write.jsp";
				break;
			//입력 화면만 띄우면 됨 (DB 갈 필요 없음)  입력전에 빈화면 띄우기
		/*
		 * 2021.05.17 권효은
		 * 후기 작성페이지 : 작성 후 목록에 바로 추가되면서 목록 보여줌
		 */		
			case("/review_write.wd"):
				command = new ReviewWriteCommand();
				command.execute(request, response);
				viewPage = "reviewlist.wd"; 
				break;
				
		/*
		 * 2021.05.18 권효은
		 * review에 detail 데이터 불러오기 (후기 상세 페이지)
		 * list에서 detail로 보낼때 docid 보냄 
		 */
			case("/reviewdetail.wd"):
				command = new ReviewDetailViewCommand();
				command.execute(request, response);
				viewPage = "review_detailview.jsp";
				break;
				
		/*
		 * 	2021.05.24 권효은
		 *  수정 페이지 분할(상세보기처럼 값 불러오기)
		 */
			case("/review_mdview.wd"):
				System.out.print("1");
				command = new ReviewMdViewCommand();
				System.out.print("2");
				command.execute(request, response);
				System.out.print("3");
				viewPage = "review_mdview.jsp";
				break;
		/*
		 * 2021.05.18-19 권효은
		 * 후기 상세 페이지에서 수정 눌러 수정후 목록으로
	     */ 
			case("/reviewmodify.wd"):
				command = new ReviewModifyCommand();
				command.execute(request, response);
				viewPage = "reviewlist.wd";
				break;
					
		/*
		 * 2021.05.18-19 권효은
		 * 후기 상세 페이지에서 삭제 눌러 삭제후 목록으로
	     */			
			case("/reviewdelete.wd"):
				command = new ReviewDeleteCommand();
				command.execute(request, response);
				viewPage = "reviewlist.wd";
				break;
					
		/*
		 * 2021.05.20 권효은
		 * 공지 목록 보기
	     */			
		   case("/noticelist.wd"):
			   command = new NoticeListCommand();
			   command.execute(request, response);
			   viewPage = "noticelist.jsp";
			   break;	
		/*
		 * 2021.05.18 권효은
		 * 공지 상세 데이터 불러오기
		 * list에서 detail로 보낼때 noticeid 보냄 
		 */
			case("/noticedetail.wd"):
				command = new NoticeDetailViewCommand();
				command.execute(request, response);
				viewPage = "notice_detailview.jsp";
				break;

	      }//switch 문
	      RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
	      dispatcher.forward(request, response);
	      

		}
	
	
	
	
}//end
