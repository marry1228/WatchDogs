package com.watchdogs.homecontroller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.watchdogs.command.home.BCommand;
import com.watchdogs.command.home.BHomeCommand;
import com.watchdogs.command.notice.NoticeDetailViewCommand;
import com.watchdogs.command.notice.NoticeListCommand;
import com.watchdogs.command.review.ReviewCountViewsCommand;
import com.watchdogs.command.review.ReviewDeleteCommand;
import com.watchdogs.command.review.ReviewDetailViewCommand;
import com.watchdogs.command.review.ReviewDocidCommand;
import com.watchdogs.command.review.ReviewListCommand;
import com.watchdogs.command.review.ReviewModifyCommand;
import com.watchdogs.command.review.ReviewWriteCommand;

/**
 * Servlet implementation class BFrontController
 */
@WebServlet("*.wd")
public class BFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			System.out.println("doGet");
			actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			System.out.println("doPost");
			actionDo(request, response);
	}
	
	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	      request.setCharacterEncoding("UTF-8");
	      System.out.println("actionDo()");
	   
	      String uri = request.getRequestURI();        //   /MVCBoard/~
	      String conPath = request.getContextPath();   //   /MVCBoard
	      String com = uri.substring(conPath.length());//   /~
	      
	      String viewPage = null;
	      BCommand command = null;
	      
	      switch(com) {
	      case("/home.wd"):  // 첫 화
				command = new BHomeCommand();
				command.execute(request, response);
				viewPage ="home.jsp";
				break; 

				
		/*
		 * 2021.05.18 권효은
		 * 후기 목록 보여주기
		 */
		   case("/reviewlist.wd"):
			   command = new ReviewListCommand();
			   command.execute(request, response);
			   viewPage = "reviewlist.jsp"; 
			   break;	
		/*
		 * 2021.05.17 권효은
		 * 입력화면으로 넘어가기	(리뷰)
		 */
				
	       case("/review.wd"):	
			    command = new ReviewDocidCommand();
			    command.execute(request, response);
				viewPage = "review_write.jsp";
				break;
			//입력 화면만 띄우면 됨 (DB 갈 필요 없음)  입력전에 빈화면 띄우기
		/*
		 * 2021.05.17 권효은
		 * 후기 작성페이지 : 작성 후 목록에 바로 추가되면서 목록 보여줌
		 */		
			case("/review_write.wd"):
				command = new ReviewWriteCommand();
				command.execute(request, response);
				viewPage = "reviewlist.wd"; 
				break;
				
		/*
		 * 2021.05.18 권효은
		 * review에 detail 데이터 불러오기 (후기 상세 페이지)
		 * list에서 detail로 보낼때 docid 보냄 
		 */
			case("/reviewdetail.wd"):
				command = new ReviewDetailViewCommand();
				command.execute(request, response);
				viewPage = "review_detailview.jsp";
				break;
				
		/*
		 * 2021.05.18-19 권효은
		 * 후기 상세 페이지에서 수정 눌러 수정후 목록으로
	     */ 
			case("/reviewmodify.wd"):
				command = new ReviewModifyCommand();
				command.execute(request, response);
				viewPage = "reviewlist.wd";
				break;
					
		/*
		 * 2021.05.18-19 권효은
		 * 후기 상세 페이지에서 삭제 눌러 삭제후 목록으로
	     */			
			case("/reviewdelete.wd"):
				command = new ReviewDeleteCommand();
				command.execute(request, response);
				viewPage = "reviewlist.wd";
				break;
//		/*
//		 * 2021.05.19 권효은
//		 * 파일 업로드 위한 작업     --->연결 시켜야함
//		 */				
//			case("/fileform.wd"):
//				viewPage = "fileform.jsp";
//				break;	
		/*
		 * 2021.05.20 권효은  ---> 아직 안함
		 * 이미지 파일 불러오기
		 */
			case("/fileupload.wd"):
//				System.out.println("fileFolder 접근 완료");
//			    String path = request.getSession().getServletContext().getRealPath("fileFolder"); 
//			    int size = 1024 * 1024 * 10; // 업로드 할 최대 파일 크기 (몇 메가바이트까지인지)
//			    String file = ""; // 업로드 한 파일의 이름(이름이 변경될수 있다)
//			    String originalFile = ""; // 이름이 변경되기 전 실제 파일 이름 (옛날께 이름바꿨다고 삭제 되지 않게)
//	
//			    // 실제 파일 업로드하는 과정
//			    try{
//			        MultipartRequest multi = new MultipartRequest(request, path, size, "UTF-8", new DefaultFileRenamePolicy());
//					//실제 path, max size, defaulFileRenamePolicy : 오리지날파일 어떻게 하겠느냐 : 파일뒤에 1,2 3 붙음 (덮어씌우기 방지 )
//			       
//					//파일 이름 가져오기
//			        Enumeration<E> files = multi.getFileNames();
//			        String str = (String)files.nextElement(); // 파일 이름을 받아와 string으로 저장
//	
//			        file = multi.getFilesystemName(str); // 업로드 된 파일 이름 가져옴
//			        originalFile = multi.getOriginalFileName(str); // 원래의 파일이름 가져옴
//	
//			    } catch (Exception e) {
//			        e.printStackTrace();
//			    }
	
				command = new ReviewWriteCommand();
				command.execute(request, response);
				viewPage = "imgtest.jsp";  //여기로 가나 테스트
				break;	
				
		/*
		 * 2021.05.20 권효은
		 * 조회수 작업  --->필요?
	     */			
			case("/countviews.wd"):
				command = new ReviewCountViewsCommand();
				command.execute(request, response);
				viewPage = "reviewlist.wd";
				break;	
		/*
		 * 2021.05.20 권효은
		 * 공지 목록 보기
	     */			
		   case("/noticelist.wd"):
			   command = new NoticeListCommand();
			   command.execute(request, response);
			   viewPage = "noticelist.jsp";
			   break;	
		/*
		 * 2021.05.18 권효은
		 * 공지 상세 데이터 불러오기
		 * list에서 detail로 보낼때 noticeid 보냄 
		 */
			case("/noticedetail.wd"):
				command = new NoticeDetailViewCommand();
				command.execute(request, response);
				viewPage = "notice_detailview.jsp";
				break;	   

	      }//switch 문
	      RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
	      dispatcher.forward(request, response);
	      
	      

	      
	      
	      
	      
	      
	      
//	      //파일 다운로드 Test
//	      String filename = request.getParameter("file");
//	      String directory = this.getServletContext().getRealPath("/upload");
//	      File file = new File(directory + "/" + filename);
//	      
//	      String mimeType = getServletContext().getMimeType(file.toString());
//	      if(mimeType == null) {
//	    	  response.setContentType("application/octet-stream");
//	      }
//	      
//	      String downloadname = null;
//	      if(request.getHeader("user-agent").indexOf("MSIE") == -1 ){
//	    	downloadname = new String (filename.getBytes("UTF-8") , "8859_1"); //data가 깨지지 않음
//	   	}else {
//	   		downloadname = new String (filename.getBytes("EUC -KR"), "8859_1");
//
//	   	}
//
//	      response.setHeader("Content-Disposition", "attachment;filename=\"" + downloadname + "\";"); 
//	      
//	      FileInputStream fileInputStream = new FileInputStream(file);
//	      ServletOutputStream servletOutputStream = response.getOutputStream();
//	      
//	      byte b[] = new byte[1024];
//	      int data = 0;
//	      
//	      while((data = (fileInputStream.read(b, 0, b.length))) != -1 ) {
//	    	  servletOutputStream.write(b, 0, data);
//	      }
//	      servletOutputStream.flush();
//	      servletOutputStream.close();
//	      fileInputStream.close();
	      
		}
	
	
	
	
}//end
