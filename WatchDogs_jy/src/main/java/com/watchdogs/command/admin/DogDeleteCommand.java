package com.watchdogs.command.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.watchdogs.command.base.BaseCommand;
import com.watchdogs.dao.DaoDog;
import com.watchdogs.dao.DaoTrainer;

public class DogDeleteCommand implements BaseCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		int dogId = Integer.parseInt(request.getParameter("dogId"));
		
		DaoDog daoDog = new DaoDog();
		daoDog.delete(dogId);
	}

}
