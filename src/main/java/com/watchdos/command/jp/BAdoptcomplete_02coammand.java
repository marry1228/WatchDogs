package com.watchdos.command.jp;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.dao.jp.BDaoAdopt;
import com.jsplec.bbs.dto.jp.BDtoAdopt;

public class BAdoptcomplete_02coammand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
      
		 int dogid = Integer.parseInt(request.getParameter("dogid"));
		    BDaoAdopt daoadopt = new BDaoAdopt();
		    ArrayList<BDtoAdopt> dtosadopt = daoadopt.adoptcomplete_02(dogid);
		    
		    request.setAttribute("adoptcomplete_02", dtosadopt);
            System.out.println("여기는 adoptcomplete_02 커멘드야");
	}

}
