package com.watchdos.command.jp;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.dao.jp.BDaoAdopt;
import com.jsplec.bbs.dto.jp.BDtoAdopt;

public class BAdoptproceedingcommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

		BDaoAdopt daoadopt = new BDaoAdopt();
		ArrayList<BDtoAdopt> dtosadopt = daoadopt.adoptproceeding();
  
        request.setAttribute("adoptproceeding", dtosadopt);
	}

}
