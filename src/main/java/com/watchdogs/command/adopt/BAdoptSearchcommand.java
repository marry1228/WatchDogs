package com.watchdogs.command.adopt;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.watchdogs.dao.BDaoAdopt;
import com.watchdogs.dto.BDtoAdopt;

public class BAdoptSearchcommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		String searchdogadopttst = request.getParameter("dogadopttst");
	      String searchtype = request.getParameter("searchtype");
	      String search = request.getParameter("search");
		
	     BDaoAdopt daoadopt = new BDaoAdopt();
		 ArrayList<BDtoAdopt> dtosadopt = daoadopt.adoptsearch(search, searchtype, searchdogadopttst);
	      
	      request.setAttribute("adopt", dtosadopt);

	    System.out.println(searchdogadopttst);
		System.out.println(search);
		System.out.println(searchtype);

	}

}
