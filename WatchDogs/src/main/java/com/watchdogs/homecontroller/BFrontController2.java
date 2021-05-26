package com.watchdogs.homecontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.watchdogs.command.adminpage.AdminPageOpenCommand;
import com.watchdogs.command.adminpage.DogDeleteCancelCommand;
import com.watchdogs.command.adminpage.NoticeDeleteCommand;
import com.watchdogs.command.adminpage.NoticeInsertCommand;
import com.watchdogs.command.adminpage.NoticeUpdateCommand;
import com.watchdogs.command.adminpage.NoticeUpdateOpenCommand;
import com.watchdogs.command.adminpage.ReviewDeleteCommandInAdmin;
import com.watchdogs.command.adminpage.ReviewDeleteCancelCommandInAdmin;
import com.watchdogs.command.adminpage.ReviewInsertCommand;
import com.watchdogs.command.adminpage.ReviewUpdateCommand;
import com.watchdogs.command.adminpage.ReviewUpdateOpenCommand;
import com.watchdogs.command.adminpage.TrainerDeleteCancelCommand;
import com.watchdogs.command.adminpage.DogDeleteCommand;
import com.watchdogs.command.adminpage.DogInsertCommand;
import com.watchdogs.command.adminpage.DogUpdateCommand;
import com.watchdogs.command.adminpage.DogUpdateOpenCommand;
import com.watchdogs.command.adminpage.NoticeDeleteCancelCommand;
import com.watchdogs.command.adminpage.TrainerDeleteCommand;
import com.watchdogs.command.adminpage.TrainerInsertCommand;
import com.watchdogs.command.adminpage.TrainerUpdateCommand;
import com.watchdogs.command.adminpage.TrainerUpdateOpenCommand;
import com.watchdogs.command.adminpage.UserDeleteCancelCommand;
import com.watchdogs.command.adminpage.UserDeleteCommand;
import com.watchdogs.command.adminpage.UserInsertCommand;
import com.watchdogs.command.adminpage.UserUpdateCommand;
import com.watchdogs.command.adminpage.UserUpdateOpenCommand;
import com.watchdogs.command.adopt.BAdoptcommand;
import com.watchdogs.command.adopt.BAdoptcomplete_02coammand;
import com.watchdogs.command.adopt.BAdoptcompletecoammand;
import com.watchdogs.command.adopt.BAdoptproceeding_02command;
import com.watchdogs.command.adopt.BAdoptproceedingcommand;
import com.watchdogs.command.adopt.BAdoptwait_02command;
import com.watchdogs.command.home.BCommand;
import com.watchdogs.command.home.BHomeCommand;
import com.watchdogs.command.home.BListCommand;
import com.watchdogs.command.login.BLoginCheckCommand;
import com.watchdogs.command.login.BLoginCommand;
import com.watchdogs.command.notice.NoticeDetailViewCommand;
import com.watchdogs.command.notice.NoticeListCommand;
import com.watchdogs.command.review.ReviewCountViewsCommand;
import com.watchdogs.command.review.ReviewDeleteCommand;
import com.watchdogs.command.review.ReviewDetailViewCommand;
import com.watchdogs.command.review.ReviewDocidCommand;
import com.watchdogs.command.review.ReviewListCommand;
import com.watchdogs.command.review.ReviewModifyCommand;
import com.watchdogs.command.review.ReviewWriteCommand;
import com.watchdogs.command.trainerlist.TrainerListOpenCommand;
import com.watchdogs.command.trainerpage.TrainerPageOpenCommand;
import com.watchdogs.command.userpage.UserPageOpenCommand;

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
	      
	      System.out.println("getRequestURI = " + uri);
	      System.out.println("getContextPath = " + conPath);
	      System.out.println("URI - Path" + com); // 체크 용 
	      
	      switch(com) {
	      
//			--메인 화면!	 
	      case("/home.wd"):  // 첫 화면, 메인 페이지
				command = new BHomeCommand();
				command.execute(request, response);
				viewPage ="home.jsp";
				break; 
				
				
				
//			--로그인 기능 시작!			
	      case("/login.wd"):  // 로그인 화면 + 회원가입 포함
				command = new BLoginCommand();
				command.execute(request, response);
				viewPage ="login.jsp";
				break;			
	      case("/logincheck.wd"):  // 로그인 중간 과정
				command = new BLoginCheckCommand();
				command.execute(request, response);
				viewPage ="logincheck.jsp";
				break;
	      case("/loginsuccess.wd"):  // 로그인 성공 시 홈 화면으로
	    	  	viewPage ="home.jsp";
	      		break;
	      case("/loginfailure.wd"):  // 로그인 실패 시 화면 
	    	  	viewPage ="loginfailure.jsp";
	      		break;
	      case("/lookupid.wd"):  // 아이디 찾기 페이지
	    	  viewPage ="lookupid.jsp";
	      		break;		
	      case("/lookuppw.wd"):  // 비밀번호 찾기 페이지
	    	  viewPage ="lookuppw.jsp";
	      		break;	
//			--로그인 기능 끝!	 
	      
	      		
	      		
//			--메인 메뉴 리스트 시작!

	      case("/adoptpage.wd"):  // 입양 페이지
	    	  	viewPage ="adoptpage.jsp";
	      		break;	      
	      case("/trainerlist.wd"):  // 훈련사 리스트 페이지 
	    	  	command = new TrainerListOpenCommand();
	      		command.execute(request, response);
	      		viewPage ="MainPage/trainerList.jsp"; // jy수정5/24
	      		break;	      		
	      case("/notice.wd"):  // 게시판 페이지
	    	  viewPage ="notice.jsp";
	      break;	
	      
	      
	      case("/longintypecheck.wd"):  // longintypecheck 페이지 // jy추가5/24
	      		viewPage ="MainPage/logintypecheck.jsp";
      			break;
	      case("/adminpage.wd"):  // admin 페이지 // jy수정5/24
	    	  	command = new AdminPageOpenCommand();
	      		command.execute(request, response);
      			viewPage ="AdminPage/adminpage.jsp";
      			break;
	      case("/trainerpage.wd"):  // trainer 페이지 // jy추가5/24
	    	  	command = new TrainerPageOpenCommand();
	      		command.execute(request, response);
      			viewPage ="TrainerPage/trainerpage.jsp";
      			break;
	      case("/userpage.wd"):  // user 페이지 // jy추가5/24
	    	  	command = new UserPageOpenCommand();
	      		command.execute(request, response);
				viewPage ="UserPage/userpage.jsp";
				break;
	     
//				--메인 메뉴 리스트 끝!
			
				
				
				
//				--게시판 페이지 시작!
	      
	      case("/reviewlist.wd"): // 게시판 후기 페이지
			   command = new ReviewListCommand();
			   command.execute(request, response);
			   viewPage = "reviewlist.jsp"; 
			   break;
	      case("/review.wd"):	// 후기 입력 페이지
			    command = new ReviewDocidCommand();
			    command.execute(request, response);
				viewPage = "review_write.jsp";
				break;
	      case("/review_write.wd"): // 작성 후 다시 후기 페이지로
				command = new ReviewWriteCommand();
				command.execute(request, response);
				viewPage = "reviewlist.wd"; 
				break;
	      case("/reviewdetail.wd"): // review에 detail 데이터 불러오기 (후기 상세 페이지)
				command = new ReviewDetailViewCommand();
				command.execute(request, response);
				viewPage = "review_detailview.jsp";
				break;
		  	case("/reviewmodify.wd"): // 후기 상세 페이지에서 수정 눌러 수정후 목록으로
				command = new ReviewModifyCommand();
				command.execute(request, response);
				viewPage = "reviewlist.wd";
				break;	
		  	case("/reviewdelete.wd"): // 후기 상세 페이지에서 삭제 눌러 삭제후 목록으로
				command = new ReviewDeleteCommand();
				command.execute(request, response);
				viewPage = "reviewlist.wd";
				break;	
		  	case("/fileupload.wd"): // 이미지 파일 불러오기 
				command = new ReviewWriteCommand();
				command.execute(request, response);
				viewPage = "imgtest.jsp";  //여기로 가나 테스트
				break;	
		  	case("/countviews.wd"): // 조회수 작업  ---> 필요?
				command = new ReviewCountViewsCommand();
				command.execute(request, response);
				viewPage = "reviewlist.wd";
				break;
		  	case("/noticelist.wd"): // 공지 목록 보기
				   command = new NoticeListCommand();
				   command.execute(request, response);
				   viewPage = "noticelist.jsp";
				   break;
		  	case("/noticedetail.wd"): // 공지 상세 데이터 불러오기
				command = new NoticeDetailViewCommand();
				command.execute(request, response);
				viewPage = "notice_detailview.jsp";
				break;
				
//				--게시판 페이지 끝!
				
	      
	      
//			--트레이너 페이지 시작!	// jy수정5/24

	      case("/trainerUpdateOpen.wd"):  
	    	  	command = new TrainerUpdateOpenCommand();
	      		command.execute(request, response);
	      		viewPage ="AdminPage/trainerUpdate.jsp";
	      		break;
	      case("/trainerUpdate.wd"):  
	    	  	command = new TrainerUpdateCommand();
	      		command.execute(request, response);
	      		viewPage ="adminpage.wd";
    			break;
	      case("/trainerInsertOpen.wd"):  
	      		viewPage ="AdminPage/trainerInsert.jsp";
	      		break;
	      case("/trainerInsert.wd"):  
	    	  	command = new TrainerInsertCommand();
	      		command.execute(request, response);
	      		viewPage ="adminpage.wd";
    			break;
	      case("/trainerDelete.wd"):  
	    	  	command = new TrainerDeleteCommand();
	      		command.execute(request, response);
    			viewPage ="adminpage.wd";
    			break;
	      case("/trainerDeleteCancel.wd"):  
	    	  	command = new TrainerDeleteCancelCommand();
	      		command.execute(request, response);
	      		viewPage ="adminpage.wd";
	      		break;
    			
//    			--트레이너 페이지 끝!
    			
    			
		
//    			-- 어드민_강아지 관리 기능 시작!	// jy수정5/24
	      case("/dogUpdateOpen.wd"):  
	    	  	command = new DogUpdateOpenCommand();
	      		command.execute(request, response);
	      		viewPage ="AdminPage/dogUpdate.jsp";
	      		break;
	      case("/dogUpdate.wd"):  
	    	  	command = new DogUpdateCommand();
	      		command.execute(request, response);
	      		viewPage ="adminpage.wd";
	      		break;
	      case("/dogInsertOpen.wd"):  
	    	  	viewPage ="AdminPage/dogInsert.jsp";
	      		break;
	      case("/dogInsert.wd"):  
	    	  	command = new DogInsertCommand();
	      		command.execute(request, response);
    			viewPage ="adminpage.wd";
    			break;
	      case("/dogDelete.wd"):  
	    	  	command = new DogDeleteCommand();
	      		command.execute(request, response);
	      		viewPage ="adminpage.wd";
	      		break;
	      case("/dogDeleteCancel.wd"):  
	    	  	command = new DogDeleteCancelCommand();
	      		command.execute(request, response);
  				viewPage ="adminpage.wd";
  				break;
//    			-- 어드민_강아지 관리 기능 끝! 		      		
	      		
	      		
//    			-- 어드민_게시판(공지, 리뷰) 관리 기능 시작! 		      		// jy수정5/24
	      case("/noticeUpdateOpen.wd"):  
	    	  	command = new NoticeUpdateOpenCommand();
	      		command.execute(request, response);
	      		viewPage ="AdminPage/noticeUpdate.jsp";
	      		break;
	      case("/noticeUpdate.wd"):  
	    	  	command = new NoticeUpdateCommand();
	      		command.execute(request, response);
	      		viewPage ="adminpage.wd";
	      		break;
	      case("/noticeInsertOpen.wd"):  
	    	  	viewPage ="AdminPage/noticeInsert.jsp";
	      		break;
	      case("/noticeInsert.wd"):  
	    	  	command = new NoticeInsertCommand();
	      		command.execute(request, response);
	      		viewPage ="adminpage.wd";
	      		break;
	      case("/noticeDelete.wd"):  
	    	  	command = new NoticeDeleteCommand();
	      		command.execute(request, response);
	      		viewPage ="adminpage.wd";
	      		break;
	      case("/noticeDeleteCancel.wd"):  
	    	  	command = new NoticeDeleteCancelCommand();
	      		command.execute(request, response);
	      		viewPage ="adminpage.wd";
	      		break;
	      		
	      		
	      		
	      case("/reviewUpdateOpen.wd"):  // jy수정5/24
	    	  	command = new ReviewUpdateOpenCommand();
	      		command.execute(request, response);
      			viewPage ="AdminPage/reviewUpdate.jsp";
      			break;
	      case("/reviewUpdate.wd"):  
	    	  	command = new ReviewUpdateCommand();
	      		command.execute(request, response);
      			viewPage ="adminpage.wd";
      			break;
	      case("/reviewInsertOpen.wd"):  
	    	  	viewPage ="AdminPage/reviewInsert.jsp";
	      		break;
	      case("/reviewInsert.wd"):  
	    	  	command = new ReviewInsertCommand();
	      		command.execute(request, response);
      			viewPage ="adminpage.wd";
      			break;
	      case("/reviewDeleteInAdmin.wd"):  
	    	  	command = new ReviewDeleteCommandInAdmin();
	      		command.execute(request, response);
	      		viewPage ="adminpage.wd";
	      		break;
	      case("/reviewDeleteCancelInAdmin.wd"):  
	    	  	command = new ReviewDeleteCancelCommandInAdmin();
	      		command.execute(request, response);
      			viewPage ="adminpage.wd";
      			break;
//    			-- 어드민_게시판(공지, 리뷰) 관리 기능 끝! 		       		
	      		
	      		
	      		
//    			-- 어드민_유저 관리 기능 시작! 		 // jy수정5/24
	      case("/userUpdateOpen.wd"):  
	    	  	command = new UserUpdateOpenCommand();
	      		command.execute(request, response);
	      		viewPage ="AdminPage/userUpdate.jsp";
	      		break;
	      case("/userUpdate.wd"):  
	    	  	command = new UserUpdateCommand();
	      		command.execute(request, response);
	      		viewPage ="adminpage.wd";
	      		break;
	      case("/userInsertOpen.wd"):  
	    	  	viewPage ="AdminPage/userInsert.jsp";
	      		break;
	      case("/userInsert.wd"):  
	    	  	command = new UserInsertCommand();
	      		command.execute(request, response);
	      		viewPage ="adminpage.wd";
	      		break;
	      case("/userDelete.wd"):  
	    	  	command = new UserDeleteCommand();
	      		command.execute(request, response);
	      		viewPage ="adminpage.wd";
	      		break;
	      case("/userDeleteCancel.wd"):  
	    	  	command = new UserDeleteCancelCommand();
	      		command.execute(request, response);
	      		viewPage ="adminpage.wd";
	      		break;
//    			-- 어드민_유저 관리 기능 끝!      		
	    

	      		
//	      		-- 입양 페이지 시작!
	      case("/adopt.wd") :     // 입양 카테고리 대기 화면으로이동
	      	  command = new BAdoptcommand() ;
	      	  viewPage = "adoptwait.jsp";
	          command.execute(request, response);
	          break;	          
	      case("/adoptwait_02.wd") :   // 입양카테고리 대기 강아지 상세정보
		      command = new BAdoptwait_02command() ;
		      viewPage = "adoptwait_02.jsp";
		      command.execute(request, response);
		      break;
	      case("/adoptapply.wd") :    // 입양 신청시 대기에서 진행으로 바꿔주기
		      command = new BAdoptcommand() ;
		      viewPage = "adoptapply.jsp";
		      command.execute(request, response);
		      break;
	      case("/adoptcomplete.wd") :                    // 입양카테고리 완료 강아지 상세정보
	    	  command = new BAdoptcompletecoammand() ;
		      viewPage = "adoptcomplete.jsp";
		      command.execute(request, response);
		      break;	      
	      case("/adoptcomplete_02.wd") :   // 입양카테고리 완료 강아지 상세정보
		      command = new BAdoptcomplete_02coammand() ;
		      viewPage = "adoptcomplete_02.jsp";
		      command.execute(request, response);
		      break;
	      case("/adoptproceeding.wd") :                 // 입양카테고리 진행 강아지 상세정보
		      command = new BAdoptproceedingcommand() ;
		      viewPage = "adoptproceeding.jsp";
		      command.execute(request, response);
		      break;
	      case("/adoptproceeding_02.wd") :                 // 입양카테고리 진행 강아지 상세정보
	    	  command = new BAdoptproceeding_02command() ;
		      viewPage = "adoptproceeding_02.jsp";
		      command.execute(request, response);
		      break;	
//	      		-- 입얍 페이지 끝!
		    
	      }
	      
	      RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
	      dispatcher.forward(request, response);
	   }

}
