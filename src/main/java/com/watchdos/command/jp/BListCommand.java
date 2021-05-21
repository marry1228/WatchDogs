package com.watchdos.command.jp;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.dao.jp.BDao;
import com.jsplec.bbs.dto.jp.BDto;

public class BListCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// DB에서 전체정보 읽어서 attribute로 jsp에 전달하기

			BDao bDao = new BDao();
			ArrayList<BDto> dtos = bDao.list();
			
			System.out.println(" Id = " + dtos); // 테스트 용
			request.setAttribute("list", dtos);
			
	}

}
