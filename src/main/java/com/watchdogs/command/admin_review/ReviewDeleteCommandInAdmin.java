package com.watchdogs.command.adminpage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.watchdogs.command.home.BCommand;
import com.watchdogs.dao.DaoReview;
import com.watchdogs.dao.DaoUser;

public class ReviewDeleteCommandInAdmin implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		int reId = Integer.parseInt(request.getParameter("reId"));
		
		DaoReview daoReview = new DaoReview();
		daoReview.delete(reId);
	}

}
