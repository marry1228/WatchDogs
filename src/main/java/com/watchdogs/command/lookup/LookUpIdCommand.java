package com.watchdogs.command.lookup;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.watchdogs.command.home.BCommand;
import com.watchdogs.dao.DaoLookupId;
import com.watchdogs.dao.DaoTrainer;
import com.watchdogs.dao.DaoUser;
import com.watchdogs.dto.DtoUser;

public class LookUpIdCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

		String userEmail = request.getParameter("useremail");
		String userName = request.getParameter("username");
		
		DaoLookupId daolookupid = new DaoLookupId();
		String searchedId = daolookupid.lookupId(userEmail, userName);

		
	}

}
