package com.watchdogs.homecontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.watchdogs.command.admin.AdminOpenCommand;
import com.watchdogs.command.admin.DocumentDeleteCommand;
import com.watchdogs.command.admin.DocumentInsertCommand;
import com.watchdogs.command.admin.DocumentUpdateCommand;
import com.watchdogs.command.admin.DocumentUpdateOpenCommand;
import com.watchdogs.command.admin.DogDeleteCommand;
import com.watchdogs.command.admin.DogInsertCommand;
import com.watchdogs.command.admin.DogUpdateCommand;
import com.watchdogs.command.admin.DogUpdateOpenCommand;
import com.watchdogs.command.admin.TrainerDeleteCommand;
import com.watchdogs.command.admin.TrainerInsertCommand;
import com.watchdogs.command.admin.TrainerUpdateCommand;
import com.watchdogs.command.admin.TrainerUpdateOpenCommand;
import com.watchdogs.command.admin.UserDeleteCommand;
import com.watchdogs.command.admin.UserInsertCommand;
import com.watchdogs.command.admin.UserUpdateCommand;
import com.watchdogs.command.admin.UserUpdateOpenCommand;
import com.watchdogs.command.adopt.BAdoptcommand;
import com.watchdogs.command.adopt.BAdoptcomplete_02coammand;
import com.watchdogs.command.adopt.BAdoptcompletecoammand;
import com.watchdogs.command.adopt.BAdoptproceeding_02command;
import com.watchdogs.command.adopt.BAdoptproceedingcommand;
import com.watchdogs.command.adopt.BAdoptwait_02command;
import com.watchdogs.command.home.BCommand;
import com.watchdogs.command.home.BHomeCommand;
import com.watchdogs.command.login.LoginCheckCommand;
import com.watchdogs.command.lookup.LookUpIdCommand;
import com.watchdogs.command.lookup.LookUpPwCommand;
import com.watchdogs.command.notice.NoticeDetailViewCommand;
import com.watchdogs.command.notice.NoticeListCommand;
import com.watchdogs.command.review.ReviewDeleteCommand;
import com.watchdogs.command.review.ReviewDetailViewCommand;
import com.watchdogs.command.review.ReviewListCommand;
import com.watchdogs.command.review.ReviewMdViewCommand;
import com.watchdogs.command.review.ReviewModifyCommand;
import com.watchdogs.command.review.ReviewWriteCommand;
import com.watchdogs.command.signup.SignUpCommand;
import com.watchdogs.command.trainerlist.TrainerListOpenCommand;

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
	      
//	      System.out.println("getRequestURI = " + uri);
//	      System.out.println("getContextPath = " + conPath);
//	      System.out.println("URI = " + com); 
	      
	      switch(com) {
	      
//			--메인 화면!	 
	      case("/home.wd"):  // 첫 화면, 메인 페이지
				command = new BHomeCommand();
				command.execute(request, response);
				viewPage ="home.jsp";
				break;
				
//			--로그인 기능 시작!			
	      case("/login.wd"):  // 로그인 화면
				viewPage ="login.jsp";
				break;
	      case("/logincheck.wd"):  // 로그인 중간 과정
				command = new LoginCheckCommand();
				command.execute(request, response);
				
				HttpSession hsession = request.getSession(true);
				String result = (String)hsession.getAttribute("result");

				if(result.equals("success")) { // 로그인 성공 
					hsession.setAttribute("userid", request.getParameter("userid"));
					viewPage ="home.jsp";
				}else { // 로그인 실패
					viewPage ="loginpop.jsp";
				}
				break;
	      case("/signup.wd"):  // 회원가입 화면
	    	  viewPage ="signup.jsp";
	      		break;
	      case("/signupfunction.wd"):  // 회원가입 기능
	    	  command = new SignUpCommand();
			    command.execute(request, response);
			    viewPage ="home.jsp";
			    break;	    
	      case("/lookupidpw.wd"):  // 아이디,비밀번호 찾기 페이지
	    	  	viewPage ="lookup.jsp";
	      		break;
	      case("/lookupidfunction.wd"):  // 아이디 찾기 기능
	    		command = new LookUpIdCommand();
				command.execute(request, response);
				viewPage ="lookupidpop.jsp";
				break;
	      case("/lookuppwfunction.wd"):  // 비밀번호 찾기 기능
	    	  	command = new LookUpPwCommand();
	      		command.execute(request, response);
	      		viewPage ="lookuppwpop.jsp";
	      	break;
	      		
	      		
//			--로그인 기능 끝!	 
	      
	      		
	      		
//			--메인 메뉴 리스트 시작!

	      case("/adoptpage.wd"):  // 입양 페이지
	    	  	viewPage ="adoptpage.jsp";
	      		break;	      
	      case("/trainerlist.wd"):  // 훈련사 리스트 페이지
	    	  	command = new TrainerListOpenCommand();
	      		command.execute(request, response);
	      		viewPage ="trainerList.jsp";
	      		break;	      		
	      case("/notice.wd"):  // 게시판 페이지
	    	  viewPage ="notice.jsp";
	      break;	      
	      case("/admin.wd"):  // admin 페이지
	    	  	command = new AdminOpenCommand();
	      		command.execute(request, response);
				viewPage ="admin.jsp";
				break;
	     
//				--메인 메뉴 리스트 끝!
			
				
				
				
//				--게시판 페이지 시작!
	      
	      case("/reviewlist.wd"): // 게시판 후기 페이지
			   command = new ReviewListCommand();
			   command.execute(request, response);
			   viewPage = "reviewlist.jsp"; 
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
		  	case("/review_mdview.wd"):
				System.out.print("1");
				command = new ReviewMdViewCommand();
				System.out.print("2");
				command.execute(request, response);
				System.out.print("3");
				viewPage = "review_mdview.jsp";
				break;
				
//				--게시판 페이지 끝!
				
	      
	      
//			--트레이너 페이지 시작!

	      case("/trainerUpdateOpen.wd"):  
	    	  	command = new TrainerUpdateOpenCommand();
	      		command.execute(request, response);
	      		viewPage ="trainerUpdate.jsp";
	      		break;
	      case("/trainerUpdate.wd"):  
	    	  	command = new TrainerUpdateCommand();
	      		command.execute(request, response);
	      		viewPage ="admin.wd";
    			break;
	      case("/trainerInsertOpen.wd"):  
	      		viewPage ="trainerInsert.jsp";
	      		break;
	      case("/trainerInsert.wd"):  
	    	  	command = new TrainerInsertCommand();
	      		command.execute(request, response);
	      		viewPage ="admin.wd";
    			break;
	      case("/trainerDelete.wd"):  
	    	  	command = new TrainerDeleteCommand();
	      		command.execute(request, response);
    			viewPage ="admin.wd";
    			break;
    			
//    			--트레이너 페이지 끝!
    			
    			
		
//    			-- 어드민_강아지 관리 기능 시작! 			
	      case("/dogUpdateOpen.wd"):  
	    	  	command = new DogUpdateOpenCommand();
	      		command.execute(request, response);
	      		viewPage ="dogUpdate.jsp";
	      		break;
	      case("/dogUpdate.wd"):  
	    	  	command = new DogUpdateCommand();
	      		command.execute(request, response);
	      		viewPage ="admin.wd";
	      		break;
	      case("/dogInsertOpen.wd"):  
	    	  	viewPage ="dogInsert.jsp";
	      		break;
	      case("/dogInsert.wd"):  
	    	  	command = new DogInsertCommand();
	      		command.execute(request, response);
    			viewPage ="admin.wd";
    			break;
	      case("/dogDelete.wd"):  
	    	  	command = new DogDeleteCommand();
	      		command.execute(request, response);
	      		viewPage ="admin.wd";
	      		break;
//    			-- 어드민_강아지 관리 기능 끝! 		      		
	      		
	      		
//    			-- 어드민_게시판(공지, 리뷰) 관리 기능 시작! 		      		
	      case("/documentUpdateOpen.wd"):  
	    	  	command = new DocumentUpdateOpenCommand();
	      		command.execute(request, response);
	      		viewPage ="documentUpdate.jsp";
	      		break;
	      case("/documentUpdate.wd"):  
	    	  	command = new DocumentUpdateCommand();
	      		command.execute(request, response);
	      		viewPage ="admin.wd";
	      		break;
	      case("/documentInsertOpen.wd"):  
	    	  	viewPage ="documentInsert.jsp";
	      		break;
	      case("/documentInsert.wd"):  
	    	  	command = new DocumentInsertCommand();
	      		command.execute(request, response);
	      		viewPage ="admin.wd";
	      		break;
	      case("/documentDelete.wd"):  
	    	  	command = new DocumentDeleteCommand();
	      		command.execute(request, response);
	      		viewPage ="admin.wd";
	      		break;
//    			-- 어드민_게시판(공지, 리뷰) 관리 기능 끝! 		       		
	      		
	      		
	      		
//    			-- 어드민_유저 관리 기능 시작! 		 
	      case("/userUpdateOpen.wd"):  
	    	  	command = new UserUpdateOpenCommand();
	      		command.execute(request, response);
	      		viewPage ="userUpdate.jsp";
	      		break;
	      case("/userUpdate.wd"):  
	    	  	command = new UserUpdateCommand();
	      		command.execute(request, response);
	      		viewPage ="admin.wd";
	      		break;
	      case("/userInsertOpen.wd"):  
	    	  	viewPage ="userInsert.jsp";
	      		break;
	      case("/userInsert.wd"):  
	    	  	command = new UserInsertCommand();
	      		command.execute(request, response);
	      		viewPage ="admin.wd";
	      		break;
	      case("/userDelete.wd"):  
	    	  	command = new UserDeleteCommand();
	      		command.execute(request, response);
	      		viewPage ="admin.wd";
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
