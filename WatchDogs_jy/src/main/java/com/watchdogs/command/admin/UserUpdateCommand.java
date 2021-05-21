package com.watchdogs.command.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.watchdogs.command.base.BaseCommand;
import com.watchdogs.dao.DaoTrainer;
import com.watchdogs.dao.DaoUser;

public class UserUpdateCommand implements BaseCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		String userTel = request.getParameter("userTel");
		String userEmail = request.getParameter("userEmail");
		String userName = request.getParameter("userName");
		String userDate = request.getParameter("userDate");
		String userDelDate = request.getParameter("userDelDate");
		String adminID = request.getParameter("adminID");
		
		DaoUser daoUser = new DaoUser();
		daoUser.update(userId, userPw, userTel, userEmail, userName, userDate, userDelDate, adminID);
	}

}
