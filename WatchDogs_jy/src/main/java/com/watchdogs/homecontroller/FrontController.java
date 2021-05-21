package com.watchdogs.homecontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
import com.watchdogs.command.base.BaseCommand;
import com.watchdogs.command.base.HomeOpenCommand;
import com.watchdogs.command.trainerlist.TrainerListOpenCommand;

/**
 * Servlet implementation class BFrontController
 */
@WebServlet("*.wd")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontController() {
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
	      BaseCommand baseCommand = null;
	      
	      
	      switch(com) {
	      case("/home.wd"):  
	    	  	baseCommand = new HomeOpenCommand();
	      		baseCommand.execute(request, response);
				viewPage ="home.jsp";
				break; 
	      case("/admin.wd"):  
	    	  	baseCommand = new AdminOpenCommand();
	      		baseCommand.execute(request, response);
				viewPage ="admin.jsp";
				break;
	      case("/trainerlist.wd"):  
	    	  	baseCommand = new TrainerListOpenCommand();
	      		baseCommand.execute(request, response);
      			viewPage ="trainerList.jsp";
      			break;
	      case("/trainerUpdateOpen.wd"):  
	    	  	baseCommand = new TrainerUpdateOpenCommand();
	      		baseCommand.execute(request, response);
	      		viewPage ="trainerUpdate.jsp";
	      		break;
	      case("/trainerUpdate.wd"):  
	    	  	baseCommand = new TrainerUpdateCommand();
	      		baseCommand.execute(request, response);
	      		viewPage ="admin.wd";
      			break;
	      case("/trainerInsertOpen.wd"):  
	      		viewPage ="trainerInsert.jsp";
	      		break;
	      case("/trainerInsert.wd"):  
	    	  	baseCommand = new TrainerInsertCommand();
	      		baseCommand.execute(request, response);
	      		viewPage ="admin.wd";
      			break;
	      case("/trainerDelete.wd"):  
	    	  	baseCommand = new TrainerDeleteCommand();
	      		baseCommand.execute(request, response);
      			viewPage ="admin.wd";
      			break;
	      case("/dogUpdateOpen.wd"):  
	    	  	baseCommand = new DogUpdateOpenCommand();
	      		baseCommand.execute(request, response);
	      		viewPage ="dogUpdate.jsp";
	      		break;
	      case("/dogUpdate.wd"):  
	    	  	baseCommand = new DogUpdateCommand();
	      		baseCommand.execute(request, response);
	      		viewPage ="admin.wd";
	      		break;
	      case("/dogInsertOpen.wd"):  
	    	  	viewPage ="dogInsert.jsp";
	      		break;
	      case("/dogInsert.wd"):  
	    	  	baseCommand = new DogInsertCommand();
	      		baseCommand.execute(request, response);
      			viewPage ="admin.wd";
      			break;
	      case("/dogDelete.wd"):  
	    	  	baseCommand = new DogDeleteCommand();
	      		baseCommand.execute(request, response);
	      		viewPage ="admin.wd";
	      		break;
	      case("/documentUpdateOpen.wd"):  
	    	  	baseCommand = new DocumentUpdateOpenCommand();
	      		baseCommand.execute(request, response);
	      		viewPage ="documentUpdate.jsp";
	      		break;
	      case("/documentUpdate.wd"):  
	    	  	baseCommand = new DocumentUpdateCommand();
	      		baseCommand.execute(request, response);
	      		viewPage ="admin.wd";
	      		break;
	      case("/documentInsertOpen.wd"):  
	    	  	viewPage ="documentInsert.jsp";
	      		break;
	      case("/documentInsert.wd"):  
	    	  	baseCommand = new DocumentInsertCommand();
	      		baseCommand.execute(request, response);
	      		viewPage ="admin.wd";
	      		break;
	      case("/documentDelete.wd"):  
	    	  	baseCommand = new DocumentDeleteCommand();
	      		baseCommand.execute(request, response);
	      		viewPage ="admin.wd";
	      		break;
	      case("/userUpdateOpen.wd"):  
	    	  	baseCommand = new UserUpdateOpenCommand();
	      		baseCommand.execute(request, response);
	      		viewPage ="userUpdate.jsp";
	      		break;
	      case("/userUpdate.wd"):  
	    	  	baseCommand = new UserUpdateCommand();
	      		baseCommand.execute(request, response);
	      		viewPage ="admin.wd";
	      		break;
	      case("/userInsertOpen.wd"):  
	    	  	viewPage ="userInsert.jsp";
	      		break;
	      case("/userInsert.wd"):  
	    	  	baseCommand = new UserInsertCommand();
	      		baseCommand.execute(request, response);
	      		viewPage ="admin.wd";
	      		break;
	      case("/userDelete.wd"):  
	    	  	baseCommand = new UserDeleteCommand();
	      		baseCommand.execute(request, response);
	      		viewPage ="admin.wd";
	      		break;
	      }
	      RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
	      dispatcher.forward(request, response);
	   }

}
