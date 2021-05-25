<<<<<<< Updated upstream:src/main/java/com/watchdogs/dto/jp/BDto.java
package com.jsplec.bbs.dto.jp;
=======
package com.watchdogs.dto;
>>>>>>> Stashed changes:src/main/java/com/watchdogs/dto/BDto.java

import java.sql.Timestamp;

public class BDto { // 자바에서 Bin 역할. MVC 에서는 Dto
	String bId;

	
	public BDto() {
		// TODO Auto-generated constructor stub
	}

	// Generate constructor using fields 사용했음! ; 오버로드
	public BDto(String bId) {
		super();
		this.bId = bId;
	}

	public String getbId() {
		return bId;
	}

	public void setbId(String bId) {
		this.bId = bId;
	}
}
