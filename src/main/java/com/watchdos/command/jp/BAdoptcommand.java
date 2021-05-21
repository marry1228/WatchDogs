package com.watchdos.command.jp;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.dao.jp.BDaoAdopt;
import com.jsplec.bbs.dto.jp.BDtoAdopt;

public class BAdoptcommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
       
		String id= request.getParameter("id");
		
		System.out.println("테스트라고 시발 " +id);
		
		BDaoAdopt daoadopt = new BDaoAdopt();
		ArrayList<BDtoAdopt> dtosadopt = daoadopt.adoptwait();
  
        request.setAttribute("adoptwait", dtosadopt);
       
	}

}
