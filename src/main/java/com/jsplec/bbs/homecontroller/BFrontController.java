package com.jsplec.bbs.homecontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.watchdogs.command.home.BCommand;
import com.watchdogs.command.home.BHomeCommand;
import com.watchdogs.command.home.BListCommand;
import com.watchdogs.command.login.BLoginCheckCommand;
import com.watchdogs.command.login.BLoginCommand;

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
	      
	      System.out.println(uri);
	      System.out.println(conPath);
	      System.out.println(com); // 체크 용 
	      
	      switch(com) {
	      case("/home.wd"):  // 첫 화면
				command = new BHomeCommand();
				command.execute(request, response);
				viewPage ="home.jsp";
				break; 
	      case("/list.wd"):  // 두번 째 화면 (DB에서 ID 출력)
				command = new BListCommand();
				command.execute(request, response);
				viewPage ="second.jsp";
				break;
	      case("/login.wd"):  // 로그인 화면
				command = new BLoginCommand();
				command.execute(request, response);
				viewPage ="login.jsp";
				break;			
	      case("/logincheck.wd"):  // 로그인 체크 화면 
				command = new BLoginCheckCommand();
				command.execute(request, response);
				viewPage ="logincheck.jsp";
				break;
	      }
	   
	      RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
	      dispatcher.forward(request, response);
	   }

}
