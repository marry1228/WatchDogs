package com.watchdogs.command.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.watchdogs.command.base.BaseCommand;
import com.watchdogs.dao.DaoDocument;
import com.watchdogs.dao.DaoDog;

public class DocumentDeleteCommand implements BaseCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		int docId = Integer.parseInt(request.getParameter("docId"));
		
		DaoDocument daoDocument = new DaoDocument();
		daoDocument.delete(docId);
	}

}
