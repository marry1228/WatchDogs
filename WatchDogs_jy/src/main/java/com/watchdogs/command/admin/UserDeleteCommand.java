package com.watchdogs.command.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.watchdogs.command.base.BaseCommand;
import com.watchdogs.dao.DaoTrainer;
import com.watchdogs.dao.DaoUser;

public class UserDeleteCommand implements BaseCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String userId = request.getParameter("userId");
		
		DaoUser daoUser = new DaoUser();
		daoUser.delete(userId);
	}

}
