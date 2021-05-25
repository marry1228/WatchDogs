package com.watchdogs.homecontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

<<<<<<< Updated upstream
import com.watchdos.command.jp.BAdoptcommand;
import com.watchdos.command.jp.BAdoptcomplete_02coammand;
import com.watchdos.command.jp.BAdoptcompletecoammand;
import com.watchdos.command.jp.BAdoptproceeding_02command;
import com.watchdos.command.jp.BAdoptproceedingcommand;
import com.watchdos.command.jp.BAdoptwait_02command;
import com.watchdos.command.jp.BCommand;
import com.watchdos.command.jp.BHomeCommand;
import com.watchdos.command.jp.BListCommand;
=======
import com.watchdogs.command.adopt.BAdoptSearchcommand;
import com.watchdogs.command.adopt.BAdoptcommand;
import com.watchdogs.command.adopt.BAdoptcomplete_02coammand;
import com.watchdogs.command.adopt.BAdoptcompletecoammand;
import com.watchdogs.command.adopt.BAdoptimginsertcommand;
import com.watchdogs.command.adopt.BAdoptproceeding_02command;
import com.watchdogs.command.adopt.BAdoptproceedingcommand;
import com.watchdogs.command.adopt.BAdopttrainingcommand;
import com.watchdogs.command.adopt.BAdopttrainingcommand_02;
import com.watchdogs.command.adopt.BAdoptwait_02command;
import com.watchdogs.command.adopt.BCommand;
import com.watchdogs.command.adopt.BHomeCommand;
import com.watchdogs.command.adopt.BListCommand;
>>>>>>> Stashed changes

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
	   
	      String uri = request.getRequestURI();         //   /MVCBoard/~
	      String conPath = request.getContextPath();    //   /MVCBoard
	      String com = uri.substring(conPath.length()); //   
	      
	      String viewPage = null;
	      BCommand command = null;
	      
	      switch(com) {
	      
	      case("/home.wd"):  // 첫 화
				command = new BHomeCommand();
				command.execute(request, response);
				viewPage ="home.jsp";
				break; 
	      
	      case("/list.wd"):  // 두번 째 화면 (DB에서 ID 출력)
				command = new BListCommand();
				command.execute(request, response);
				viewPage ="list.jsp";
				break;
	      
<<<<<<< Updated upstream
	      case("/adopt.wd") :     // 입양 카테고리 대기 화면으로이동
=======
	      case("/adopt.wd") :     // 입양 카테고리 대기 
	    	  System.out.println("테스트야");
>>>>>>> Stashed changes
	      	command = new BAdoptcommand() ;
	        viewPage = "adoptwait.jsp";
	          command.execute(request, response);
	          break;
	          
<<<<<<< Updated upstream
	      case("/adoptwait_02.wd") :   // 입양카테고리 대기 강아지 상세정보
=======
	      case("/adoptwait_02.wd") :   // 입양카테고리 가능 강아지 상세정보
>>>>>>> Stashed changes
	      command = new BAdoptwait_02command() ;
	      viewPage = "adoptwait_02.jsp";
	      command.execute(request, response);
	      break;

<<<<<<< Updated upstream
	      case("/adoptapply.wd") :    // 입양 신청시 대기에서 진행으로 바꿔주기
=======
	      case("/adoptapply.wd") :    // 입양 신청시 가능 에서 진행으로 바꿔주기
>>>>>>> Stashed changes
	      command = new BAdoptcommand() ;
	      viewPage = "adoptapply.jsp";
	      command.execute(request, response);
	      break;

<<<<<<< Updated upstream
	      case("/adoptcomplete.wd") :                    // 입양카테고리 완료 강아지 상세정보
=======
	      case("/adoptcomplete.wd") :                    // 입양카테고리 완료 
>>>>>>> Stashed changes
	    	  command = new BAdoptcompletecoammand() ;
	      viewPage = "adoptcomplete.jsp";
	      command.execute(request, response);
	      break;
	      
	      case("/adoptcomplete_02.wd") :   // 입양카테고리 완료 강아지 상세정보
		      command = new BAdoptcomplete_02coammand() ;
		      viewPage = "adoptcomplete_02.jsp";
		      command.execute(request, response);
		      break;
	      
<<<<<<< Updated upstream
	      case("/adoptproceeding.wd") :                 // 입양카테고리 진행 강아지 상세정보
=======
	      case("/adoptproceeding.wd") :                 // 입양카테고리 진행 
>>>>>>> Stashed changes
	      command = new BAdoptproceedingcommand() ;
	      viewPage = "adoptproceeding.jsp";
	      command.execute(request, response);
	      break;

	      case("/adoptproceeding_02.wd") :                 // 입양카테고리 진행 강아지 상세정보
	    	  command = new BAdoptproceeding_02command() ;
	      viewPage = "adoptproceeding_02.jsp";
	      command.execute(request, response);
	      break;
	      
<<<<<<< Updated upstream
=======
	      case("/adopttraining.wd") :                 // 입양카테고리 훈련 중
	    	  command = new BAdopttrainingcommand() ;
	      viewPage = "adopttraining.jsp";
	      command.execute(request, response);
	      break;
	      
	      case("/adopttraining_02.wd") :                 // 입양카테고리 훈련 중  강아지 상세정보
	    	  command = new BAdopttrainingcommand_02() ;
	      viewPage = "adopttraining_02.jsp";
	      command.execute(request, response);
	      break;
	      case("/adoptwaitSearch.wd") :                 // 입양카테고리 가능 검색
	    	  command = new BAdoptSearchcommand();
	      viewPage = "adoptwait.jsp";
	      command.execute(request, response);
	      break;
	      case("/adoptproceedingSearch.wd") :                 // 입양카테고리 진행 검색
	    	  command = new BAdoptSearchcommand();
	      viewPage = "adoptproceeding.jsp";
	      command.execute(request, response);
	      break;
	      case("/adoptcompleteSearch.wd") :                 // 입양카테고리 완료 검색
	    	  command = new BAdoptSearchcommand();
	      viewPage = "adoptcomplete.jsp";
	      command.execute(request, response);
	      break;
	      case("/adopttrainingSearch.wd") :                 // 입양카테고리 훈련 중 검색
	    	  command = new BAdoptSearchcommand();
	      viewPage = "adopttraining.jsp";
	      command.execute(request, response);
	      break;
	     
	      
	      
	      
	      
	      
	      
	      
	      
	      
	      case("/adoptimginsert.wd") :                 // 이미지 업로드하기
	    	  command = new BAdoptimginsertcommand();
	      viewPage = "adoptimginsert.jsp";
	      command.execute(request, response);
	      break;
	      
	      
	      
	      
>>>>>>> Stashed changes
	      }
	      RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
	      dispatcher.forward(request, response);
	      System.out.println("윤희지 = 여기는 front ");
	   }

}
