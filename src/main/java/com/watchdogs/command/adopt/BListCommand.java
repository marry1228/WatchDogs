<<<<<<< Updated upstream:src/main/java/com/watchdos/command/jp/BListCommand.java
package com.watchdos.command.jp;
=======
package com.watchdogs.command.adopt;
>>>>>>> Stashed changes:src/main/java/com/watchdogs/command/adopt/BListCommand.java

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

<<<<<<< Updated upstream:src/main/java/com/watchdos/command/jp/BListCommand.java
import com.jsplec.bbs.dao.jp.BDao;
import com.jsplec.bbs.dto.jp.BDto;
=======
import com.watchdogs.dao.BDao;
import com.watchdogs.dto.BDto;
>>>>>>> Stashed changes:src/main/java/com/watchdogs/command/adopt/BListCommand.java

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
