package com.watchdogs.command.login;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.dao.BListDao;
import com.jsplec.bbs.dao.BLoginCheckDao;
import com.jsplec.bbs.dto.BListDto;
import com.jsplec.bbs.dto.BLoginCheckDto;
import com.watchdogs.command.home.BCommand;

public class BLoginCheckCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

		String inputID = request.getParameter("id");
		String inputPW = request.getParameter("pw");
		
		BLoginCheckDao bLCDao = new BLoginCheckDao();
		BLoginCheckDto bLCDto =  bLCDao.login(inputID, inputPW);
		
		request.setAttribute("content_view", bLCDto);
	}

}
