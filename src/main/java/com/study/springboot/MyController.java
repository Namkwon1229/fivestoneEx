package com.study.springboot;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.study.springboot.dao.IFaqDao;
import com.study.springboot.dao.IJobDao;
import com.study.springboot.dao.IMemberDao;
import com.study.springboot.dao.INewsDao;
import com.study.springboot.dao.INoticeDao;
import com.study.springboot.dao.IOne2OneDao;
import com.study.springboot.dao.IQnaDao;

/**********************************************
*				 파이브스톤 				  *
***********************************************
*	MyController.java						  *
*											  *
*	작성자 : 김남권							  *
*   										  *
*   JSP에서 요청한 URI 분기 처리			  *
**********************************************/
@Controller
public class MyController {

	@Autowired
	private IFaqDao fDao;
	
	@Autowired
	private IJobDao jDao;
	
	@Autowired
	private IMemberDao mDao;
	
	@Autowired
	private INewsDao nDao;
	
	@Autowired
	private INoticeDao ntDao;
	
	@Autowired
	private IOne2OneDao oDao;
	
	@Autowired
	private IQnaDao qDao;
	
	@Autowired
	PlatformTransactionManager transactionManager;

	@Autowired
	TransactionDefinition definition;
	
	@RequestMapping("/")
	public String root( RedirectAttributes redirect ) throws Exception {
		return "redirect:index";
	}
	
	@RequestMapping("/index")
	public String index(HttpServletRequest request, Model model) {
		
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [index]");
		
		model.addAttribute("nList", ntDao.top3List());
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [index] ntDao.top3List().size() : " + ntDao.top3List().size());
		
		return "index";
	}
	
	/*******************************************************/
	/*	  					  member					   */
	/*******************************************************/
	// *************
	// * 로그인 폼 *
	// *************
	@RequestMapping("/loginForm")
	public String loginForm(Model model) {
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [loginForm]");

		return "/member/login";
	}
	
	// **********
	// * 로그인 *
	// **********
	@RequestMapping("/login")
	public String write(@RequestParam("member_id") String member_id, 
						@RequestParam("member_pw") String member_pw, 
						Model model, HttpServletRequest req) {
		
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [login] member_id = " + member_id);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [login] member_pw = " + member_pw);
		
		int result = mDao.memberCheck(member_id, member_pw);
		
		if(result == 0) {
			// 로그인 실패
			return "redirect:loginForm";
		}else {
			// 로그인 성공
			HttpSession session = req.getSession();
			session.setAttribute("member_id", member_id);
			return "redirect:index";
		}
		
	}
	
	// ************
	// * 로그아웃 *
	// ************
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request, Model model) {
		
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [logout]");
		
		HttpSession session = request.getSession();
		session.invalidate();
		
		return "redirect:index";
	}
	
	// ***************
	// * 회원가입 폼 *
	// ***************
	@RequestMapping("/joinForm")
	public String joinForm(Model model) {
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [joinForm]");

		return "/member/join1";
	}

	// *****************************
	// * 이미 등록된 회원인지 확인 *
	// *****************************
	@RequestMapping("/checkJoinInfo")
	public String checkJoinInfo(@RequestParam("member_name") String member_name, 
								@RequestParam("member_email") String member_email, 
								HttpServletResponse response, Model model) throws IOException {
		
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [checkJoinInfo] member_name = " + member_name);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [checkJoinInfo] member_email = " + member_email);

		int result = mDao.checkJoinInfo(member_name, member_email);
		
		if(result == 0) {
			// 신규 회원
			return "/member/join2";
		}else {
			// 기존 회원
			
			PrintWriter out = response.getWriter();
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script language='javascript'>");
			out.println("alert('이미 가입한 회원입니다.'); location.href='loginForm';");
			out.println("</script>");
			out.flush();
			
			return "redirect:loginForm";
		}
		
	}
	
	// ***************
	// * ID 중복체크 *
	// ***************
	@RequestMapping("/idCheckAjax")
	public void checkJoinInfo(@RequestParam("member_id") String member_id, 
							 HttpServletResponse response,
							 Model model) {
		
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [idCheckAjax] member_id = " + member_id);

		int result = mDao.idCheck(member_id);
		
		if(result == 1) {
			try {
				response.getWriter().print("1");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else {
			try {
				response.getWriter().print("0");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
	}
	
	// ********************
	// * 가입정보 입력 폼 *
	// ********************
	@RequestMapping("/infoWrite")
	public String infoWrite(Model model) {
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [infoWrite]");

		return "/member/join3";
	}

	// *******************
	// * 회원가입_DB추가 *
	// *******************
	@RequestMapping("/addMember")
	public String addMember(@RequestParam("member_id") String member_id, 
							@RequestParam("member_pw") String member_pw,
							@RequestParam("member_name") String member_name,
							@RequestParam("member_email_left") String member_email_left,
							@RequestParam("member_email_right") String member_email_right,
							@RequestParam("member_email_receive") int member_email_receive,
							@RequestParam("member_pw_question") int member_pw_question,
							@RequestParam("member_pw_answer") String member_pw_answer,
							@RequestParam("member_gender") String member_gender,
							@RequestParam("member_birth_date_year") String member_birth_date_year,
							@RequestParam("member_birth_date_month") String member_birth_date_month,
							@RequestParam("member_birth_date_day") String member_birth_date_day,
							Model model) {
		
		String member_email = member_email_left + "@" + member_email_right;
		String member_birth_date = member_birth_date_year + "/" + member_birth_date_month + "/" + member_birth_date_day;
		
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [addMember] member_id : " + member_id);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [addMember] member_pw : " + member_pw);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [addMember] member_name : " + member_name);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [addMember] member_email_left : " + member_email_left);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [addMember] member_email_right : " + member_email_right);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [addMember] member_email : " + member_email);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [addMember] member_email_receive : " + member_email_receive);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [addMember] member_pw_question : " + member_pw_question);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [addMember] member_pw_answer : " + member_pw_answer);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [addMember] member_gender : " + member_gender);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [addMember] member_birth_date_year : " + member_birth_date_year);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [addMember] member_birth_date_month : " + member_birth_date_month);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [addMember] member_birth_date_day : " + member_birth_date_day);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [addMember] member_birth_date : " + member_birth_date);
		
		int result = mDao.addMember(member_id, member_pw, member_name, member_email, member_email_receive, 
									member_pw_question, member_pw_answer, member_gender, member_birth_date);
		
		TransactionStatus status = transactionManager.getTransaction(definition);
		
		if(result == 1) {
			transactionManager.commit(status);
			System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [addMember] commit!!");
		}else {
			transactionManager.rollback(status);
			System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [addMember] rollback!!");
		}
		
		return "redirect:index";
	}
	
	/*******************************************************/
	/*						company						   */
	/*******************************************************/
	// *************
	// * 인삿말 폼 *
	// *************
	@RequestMapping("/greetingForm")
	public String greetingForm(Model model) {
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [greetingForm]");

		return "/company/greeting";
	}
	
	// ***************
	// * 회사개요 폼 *
	// ***************
	@RequestMapping("/introduceForm")
	public String introduceForm(Model model) {
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [introduceForm]");

		return "/company/introduce";
	}
	
	// ***************
	// * 오시는길 폼 *
	// ***************
	@RequestMapping("/mapsForm")
	public String mapsForm(Model model) {
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [mapsForm]");

		return "/company/maps";
	}
	
	/*******************************************************/
	/*						 business					   */
	/*******************************************************/
	// ****************
	// * 사업분야1 폼 *
	// ****************
	@RequestMapping("/busi1Form")
	public String busi1Form(Model model) {
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [busi1Form]");

		return "/business/busi1";
	}
	
	// ****************
	// * 사업분야2 폼 *
	// ****************
	@RequestMapping("/busi2Form")
	public String busi2Form(Model model) {
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [busi2Form]");

		return "/business/busi2";
	}
	
	// ****************
	// * 사업분야3 폼 *
	// ****************
	@RequestMapping("/busi3Form")
	public String busi3Form(Model model) {
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [busi3Form]");

		return "/business/busi3";
	}
	
	// ****************
	// * 사업분야4 폼 *
	// ****************
	@RequestMapping("/busi4Form")
	public String busi4Form(Model model) {
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [busi4Form]");

		return "/business/busi4";
	}
	
	/*******************************************************/
	/*						 product					   */
	/*******************************************************/
	// ****************
	// * 제품안내1 폼 *
	// ****************
	@RequestMapping("/prod1Form")
	public String prod1Form(Model model) {
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [prod1Form]");

		return "/product/prod1";
	}
	
	// ****************
	// * 제품안내2 폼 *
	// ****************
	@RequestMapping("/prod2Form")
	public String prod2Form(Model model) {
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [prod2Form]");

		return "/product/prod2";
	}
	
	// ****************
	// * 제품안내3 폼 *
	// ****************
	@RequestMapping("/prod3Form")
	public String prod3Form(Model model) {
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [prod3Form]");

		return "/product/prod3";
	}
	
	// ****************
	// * 제품안내4 폼 *
	// ****************
	@RequestMapping("/prod4Form")
	public String prod4Form(Model model) {
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [prod4Form]");

		return "/product/prod4";
	}
	
	// ****************
	// * 제품상세1 폼 *
	// ****************
	@RequestMapping("/item1Form")
	public String item1Form(Model model) {
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [item1Form]");

		return "/product/items/item1";
	}
	
	// ****************
	// * 제품상세2 폼 *
	// ****************
	@RequestMapping("/item2Form")
	public String item2Form(Model model) {
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [item2Form]");

		return "/product/items/item2";
	}
	
	// ****************
	// * 제품상세3 폼 *
	// ****************
	@RequestMapping("/item3Form")
	public String item3Form(Model model) {
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [item3Form]");

		return "/product/items/item3";
	}
	
	// ****************
	// * 제품상세4 폼 *
	// ****************
	@RequestMapping("/item4Form")
	public String item4Form(Model model) {
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [item4Form]");

		return "/product/items/item4";
	}
	
	// ****************
	// * 제품상세5 폼 *
	// ****************
	@RequestMapping("/item5Form")
	public String item5Form(Model model) {
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [item5Form]");

		return "/product/items/item5";
	}
	
	// ****************
	// * 제품상세6 폼 *
	// ****************
	@RequestMapping("/item6Form")
	public String item6Form(Model model) {
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [item6Form]");

		return "/product/items/item6";
	}
	
	// ****************
	// * 제품상세7 폼 *
	// ****************
	@RequestMapping("/item7Form")
	public String item7Form(Model model) {
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [item7Form]");

		return "/product/items/item7";
	}
	
	// ****************
	// * 제품상세8 폼 *
	// ****************
	@RequestMapping("/item8Form")
	public String item8Form(Model model) {
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [item8Form]");

		return "/product/items/item8";
	}
	
	/*******************************************************/
	/*						 community					   */
	/*******************************************************/
	// **********************
	// * 공지사항 전체 조회 *
	// **********************
	@RequestMapping("/announceForm")
	public String announceForm(Model model) {
		
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [announceForm]");
		
		model.addAttribute("nList", ntDao.list());
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [announceForm] list().size() : " + ntDao.list().size());
		
		return "/community/announce";
	}
	
	// **********************
	// * 공지사항 단건 조회 *
	// **********************
	@RequestMapping("/announceContent")
	public String announceContent(@RequestParam("notice_idx") int notice_idx, Model model) {
		
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [announceContent] notice_idx : " + notice_idx);
		
		model.addAttribute("nDto", ntDao.noticeInfo(notice_idx));
		
		return "/community/announceContent";
	}

	// **********************
	// * 공지사항 검색 조회 *
	// **********************
	@RequestMapping("/announceSearch")
	public String announceSearch(@RequestParam("searchTarget") String searchTarget, 
								 @RequestParam("searchWord") String searchWord,
								 Model model) {
		
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [announceSearch] searchTarget : " + searchTarget);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [announceSearch] searchWord : " + searchWord);
		
		if(searchTarget.equals("title")) {
			model.addAttribute("nList", ntDao.titleSearch(searchWord));
		}else if(searchTarget.equals("content")) {
			model.addAttribute("nList", ntDao.contentSearch(searchWord));
		}
		
		return "/community/announce";
	}
	
	// **********************
	// * 채용정보 전체 조회 *
	// **********************
	@RequestMapping("/employForm")
	public String employForm(Model model) {
		
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [employForm]");
		
		model.addAttribute("jList", jDao.list());
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [employForm] list().size() : " + jDao.list().size());
		
		return "/community/employ";
	}
	
	// **********************
	// * 채용정보 단건 조회 *
	// **********************
	@RequestMapping("/employContent")
	public String employContent(@RequestParam("job_idx") int job_idx, Model model) {
		
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [employContent] job_idx : " + job_idx);
		
		model.addAttribute("jDto", jDao.jobInfo(job_idx));
		
		return "/community/employContent";
	}
	
	// **********************
	// * 채용정보 검색 조회 *
	// **********************
	@RequestMapping("/employSearch")
	public String employSearch(@RequestParam("searchTarget") String searchTarget, 
							   @RequestParam("searchWord") String searchWord,
							   Model model) {
		
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [employSearch] searchTarget : " + searchTarget);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [employSearch] searchWord : " + searchWord);
		
		if(searchTarget.equals("title")) {
			model.addAttribute("jList", jDao.titleSearch(searchWord));
		}else if(searchTarget.equals("content")) {
			model.addAttribute("jList", jDao.contentSearch(searchWord));
		}
		
		return "/community/employ";
	}
	
	// **********************
	// * 홍보자료 전체 조회 *
	// **********************
	@RequestMapping("/promotionForm")
	public String promotionForm(Model model) {
		
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [promotionForm]");
		
		model.addAttribute("nList", nDao.list());
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [promotionForm] list().size() : " + nDao.list().size());
		
		return "/community/promotion";
	}
	
	// **********************
	// * 홍보자료 단건 조회 *
	// **********************
	@RequestMapping("/promotionContent")
	public String promotionContent(@RequestParam("news_idx") int news_idx, Model model) {
		
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [promotionContent] news_idx : " + news_idx);
		
		model.addAttribute("nDto", nDao.newsInfo(news_idx));
		
		return "/community/promotionContent";
	}
	
	// **********************
	// * 홍보자료 검색 조회 *
	// **********************
	@RequestMapping("/promotionSearch")
	public String promotionSearch(@RequestParam("searchTarget") String searchTarget, 
							      @RequestParam("searchWord") String searchWord,
							      Model model) {
		
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [promotionSearch] searchTarget : " + searchTarget);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [promotionSearch] searchWord : " + searchWord);
		
		if(searchTarget.equals("title")) {
			System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [promotionSearch] titleSearch : " + searchTarget + ", "+ searchWord);
			model.addAttribute("nList", nDao.titleSearch(searchWord));
		}else if(searchTarget.equals("content")) {
			System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [promotionSearch] contentSearch : " + searchTarget + ", "+ searchWord);
			model.addAttribute("nList", nDao.contentSearch(searchWord));
		}
		
		return "/community/promotion";
	}
	
	/*******************************************************/
	/*						 customer					   */
	/*******************************************************/
	// **************
	// * 1:1문의 폼 *
	// **************
	@RequestMapping("/one2oneForm")
	public String one2oneForm(Model model) {
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [one2oneForm]");

		return "/customer/one2one";
	}
	
	// ****************
	// * 1:1문의 추가 *
	// ****************
	@RequestMapping("/addOne2one")
	public String addOne2one(@RequestParam("one2one_name") String one2one_name, 
							@RequestParam("one2one_phone") String one2one_phone,
							@RequestParam("one2one_email") String one2one_email,
							@RequestParam("one2one_address") String one2one_address,
							@RequestParam("one2one_title") String one2one_title,
							@RequestParam("one2one_content") int one2one_content,
							Model model) {
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [addOne2one] one2one_name : " + one2one_name);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [addOne2one] one2one_phone : " + one2one_phone);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [addOne2one] one2one_email : " + one2one_email);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [addOne2one] one2one_address : " + one2one_address);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [addOne2one] one2one_title : " + one2one_title);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [addOne2one] one2one_content : " + one2one_content);
		
		int result = oDao.addOne2one(one2one_name, one2one_phone, one2one_email, one2one_address, one2one_title, one2one_title);
		
		TransactionStatus status = transactionManager.getTransaction(definition);
		
		if(result == 1) {
			transactionManager.commit(status);
			System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaDelete] commit!!");
		}else {
			transactionManager.rollback(status);
			System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaDelete] rollback!!");
		}
		
		return "/customer/one2oneForm";
	}
	
	// ***********************
	// * 묻고답하기 전체조회 *
	// ***********************
	@RequestMapping("/qnaForm")
	public String qnaForm(Model model) {
		
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaForm]");
		
		model.addAttribute("qList", qDao.list());
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaForm] list().size() : " + qDao.list().size());
		
		return "/customer/qna";
	}
	
	// ************************
	// * 묻고답하기 단건 조회 *
	// ************************
	@RequestMapping("/qnaContent")
	public String qnaContent(@RequestParam("qna_idx") int qna_idx, Model model) {
		
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaContent] qna_idx : " + qna_idx);
		
		model.addAttribute("qDto", qDao.qnaInfo(qna_idx));
		
		return "/customer/qnaContent";
	}
	
	// *******************
	// * 묻고답하기 팝업 *
	// *******************
	@RequestMapping("/qnaPopup")
	public String qnaPopup(@RequestParam("qna_idx") int qna_idx, Model model) {
		
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaPopup] qna_idx : " + qna_idx);
		
		model.addAttribute("qna_idx", qna_idx);
		
		return "/customer/qnaPopup";
	}
	
	// ****************************
	// * 묻고답하기 비밀번호 확인 *
	// ****************************
	@RequestMapping("/qnaPwCheck")
	public String qnaPwCheck(@RequestParam("qna_idx") int qna_idx, 
							 @RequestParam("qna_pw") String qna_pw, 
							 HttpServletResponse response, Model model) throws IOException {
		
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaPwCheck] qna_idx : " + qna_idx);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaPwCheck] qna_pw : " + qna_pw);
		
		int result = qDao.qnaPwCheck(qna_idx, qna_pw);

		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaPwCheck] result : " + result);
		
		if(result == 1) {
			// 비밀번호 일치
			
			model.addAttribute("qDto", qDao.qnaInfo(qna_idx));
			
			return "/customer/qnaContent";
			
		}else {
			// 비밀번호 불일치
			
			PrintWriter out = response.getWriter();
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script language='javascript'>");
			out.println("alert('비밀번호가 일치하지 않습니다.'); location.href='qnaForm';");
			out.println("</script>");
			out.flush();
			
			return "/customer/qna";
			
		}
		
	}
	
	// **********************
	// * 묻고답하기 글 삭제 *
	// **********************
	@RequestMapping("/qnaDelete")
	public String qnaDelete(@RequestParam("qna_idx") int qna_idx, Model model) {
		
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaDelete] qna_idx : " + qna_idx);
		
		int result = qDao.qnaDelete(qna_idx);
		
		TransactionStatus status = transactionManager.getTransaction(definition);
		
		if(result == 1) {
			transactionManager.commit(status);
			System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaDelete] commit!!");
		}else {
			transactionManager.rollback(status);
			System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaDelete] rollback!!");
		}
		
		return "/customer/qnaForm";
	}
	
	// *************************
	// * 묻고답하기 글 추가 폼 *
	// *************************
	@RequestMapping("/qnaAdd")
	public String qnaAdd(Model model) {
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaAdd]");

		return "/customer/qnaWrite";
	}
	
	// **************************
	// * 묻고답하기 글 추가 액션*
	// **************************
	@RequestMapping("/qnaAddAction")
	public String qnaAddAction(@RequestParam("qna_name") String qna_name, 
							   @RequestParam("qna_pw") String qna_pw,
							   @RequestParam("qna_title") String qna_title,
							   @RequestParam("qna_content") String qna_content,
							   Model model) {
		
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaAddAction] qna_name : " + qna_name);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaAddAction] qna_pw : " + qna_pw);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaAddAction] qna_title : " + qna_title);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaAddAction] qna_content : " + qna_content);
		
		int result = qDao.qnaAdd(qna_name, qna_pw, qna_title, qna_content);
		
		TransactionStatus status = transactionManager.getTransaction(definition);
		
		if(result == 1) {
			transactionManager.commit(status);
			System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaAddAction] commit!!");
		}else {
			transactionManager.rollback(status);
			System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaAddAction] rollback!!");
		}
		
		return "redirect:qnaForm";
	}
	
	// *************************
	// * 묻고답하기 글 수정 폼 *
	// *************************
	@RequestMapping("/qnaModify")
	public String qnaModify(Model model) {
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaModify]");

		return "/customer/qnaModify";
	}
	
	// ***************************
	// * 묻고답하기 글 수정 액션 *
	// ***************************
	@RequestMapping("/qnaModifyAction")
	public String qnaModifyAction( @RequestParam("qna_idx") int qna_idx, 
								   @RequestParam("qna_name") String qna_name, 
								   @RequestParam("qna_pw") String qna_pw,
								   @RequestParam("qna_title") String qna_title,
								   @RequestParam("qna_content") String qna_content,
								   HttpServletResponse response, Model model) throws IOException {
		
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaModifyAction] qna_idx : " + qna_idx);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaModifyAction] qna_name : " + qna_name);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaModifyAction] qna_pw : " + qna_pw);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaModifyAction] qna_title : " + qna_title);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaModifyAction] qna_content : " + qna_content);
		
		int result = qDao.qnaModify(qna_idx, qna_name, qna_pw, qna_title, qna_content);
		
		TransactionStatus status = transactionManager.getTransaction(definition);
		
		if(result == 1) {
			transactionManager.commit(status);
			System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaModifyAction] commit!!");
			
			model.addAttribute("qDto", qDao.qnaInfo(qna_idx));
			
			return "/customer/qnaContent";
		}else {
			System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaModifyAction] rollback!!");
			
			PrintWriter out = response.getWriter();
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script language='javascript'>");
			out.println("alert('글 수정이 실패하였습니다.'); location.href='qna';");
			out.println("</script>");
			out.flush();
			
			return "redirect:qnaForm";
		}
	}
	
	// ************************
	// * 묻고답하기 검색 조회 *
	// ************************
	@RequestMapping("/qnaSearch")
	public String qnaSearch(@RequestParam("searchTarget") String searchTarget, 
					        @RequestParam("searchWord") String searchWord,
					        Model model) {
		
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaSearch] searchTarget : " + searchTarget);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [qnaSearch] searchWord : " + searchWord);
		
		if(searchTarget.equals("title")) {
			model.addAttribute("qList", qDao.titleSearch(searchWord));
		}else if(searchTarget.equals("content")) {
			model.addAttribute("qList", qDao.contentSearch(searchWord));
		}else if(searchTarget.equals("name")) {
			model.addAttribute("qList", qDao.nameSearch(searchWord));
		}
		
		return "/customer/qna";
	}
	
	// ****************
	// * FAQ 전체조회 *
	// ****************
	@RequestMapping("/faqForm")
	public String faqForm(Model model) {
		
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [faqForm]");
		
		model.addAttribute("fList", fDao.list());
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [faqForm] list().size() : " + fDao.list().size());
		
		return "/customer/faq";
	}
		
	// *****************
	// * FAQ 단건 조회 *
	// *****************
	@RequestMapping("/faqContent")
	public String faqContent(@RequestParam("faq_idx") int faq_idx, Model model) {
		
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [faqContent] faq_idx : " + faq_idx);
		
		model.addAttribute("fDto", fDao.faqInfo(faq_idx));
		
		return "/customer/faqContent";
	}
	
	// *****************
	// * FAQ 검색 조회 *
	// *****************
	@RequestMapping("/faqSearch")
	public String faqSearch(@RequestParam("searchTarget") String searchTarget, 
						    @RequestParam("searchWord") String searchWord,
						    Model model) {
		
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [faqSearch] searchTarget : " + searchTarget);
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [faqSearch] searchWord : " + searchWord);
		
		if(searchTarget.equals("title")) {
			model.addAttribute("fList", fDao.titleSearch(searchWord));
		}else if(searchTarget.equals("content")) {
			model.addAttribute("fList", fDao.contentSearch(searchWord));
		}
		
		return "/customer/faq";
	}
	
	// *********************************
	// * 이메일 무단수집 거부 안내화면 *
	// *********************************
	@RequestMapping("/emailPolicyForm")
	public String emailPolicyForm(Model model) {
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [emailPolicyForm]");

		return "emailPolicy";
	}
	
	// *****************************
	// * 개인정보보호정책 안내화면 *
	// *****************************
	@RequestMapping("/personalPolicyForm")
	public String personalPolicyForm(Model model) {
		System.out.println("  line: " + new Throwable().getStackTrace()[0].getLineNumber() + " [personalPolicyForm]");

		return "personalPolicy";
	}
	
}







