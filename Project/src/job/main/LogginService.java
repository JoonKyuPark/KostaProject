package job.main;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.el.lang.ELSupport;

import recruit.infor.Recruit_Infor;

public class LogginService {

	private static LogginService log = new LogginService();
	private static MemberDao dao;

	public static LogginService getInstance() {
		dao = MemberDao.getInstance();
		return log;
	}

	public void insert(Member_info member) {

		int re = dao.insertPMember(member);

	}

	public void insert(HttpServletRequest request) {
		String member_name = request.getParameter("member_name");
		String member_email = request.getParameter("member_email");
		String member_tel = request.getParameter("tel");
		String member_tel2 = request.getParameter("tel2");
		String member_tel3 = request.getParameter("tel3");
		String member_id = request.getParameter("member_id");
		String member_pwd = request.getParameter("member_pwd");
		Member_info m = new Member_info(member_name, member_email, member_tel
				+ member_tel2 + member_tel3, member_id, member_pwd);
		System.out.println(dao.mIdCount());
		m.setMember_no(dao.mIdCount() + 1);
		int re = dao.insertPMember(m);
		System.out.println(re);
	}
	public void insert2(Etp_infor etp) {
		dao.insertEtpMember(etp);
	}

	public void insert2(HttpServletRequest request) {
		String delegator_name = request.getParameter("delegator_name");
		String etp_id = request.getParameter("etp_id");
		String etp_pass = request.getParameter("etp_pass");
		String etp_email = request.getParameter("etp_email");
		String etp_kind = request.getParameter("etp_kind");
		String etp_tel = request.getParameter("etp_tel");
		String etp_tel2 = request.getParameter("etp_tel2");
		String etp_tel3 = request.getParameter("etp_tel3");
		String etp_sales = request.getParameter("etp_sales");
		String etp_registration_num = request
				.getParameter("etp_registration_num");
		String etp_name = request.getParameter("etp_name");
		Etp_infor etp = new Etp_infor(etp_id, etp_pass, etp_email, etp_tel
				+ etp_tel2 + etp_tel3, etp_kind, etp_registration_num,
				delegator_name, etp_name);
		etp.setEtp_no(dao.Ecount()+1);
		System.out.println("????");
		dao.insertEtpMember(etp);
	}

	public int Mlist(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Member_info> list = log.dao.Mlist();
		int loggin = 0;
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getMember_id()
					.equals(request.getParameter("logid"))) {
				if (list.get(i).getMember_pwd()
						.equals(request.getParameter("logpwd"))) {
					System.out.println(list.get(i).getMember_pwd() + 100);
					loggin = 1;
					request.setAttribute("loginid", list.get(i).getMember_id());
					return loggin;
				}
			}
		}
		return loggin;
	}

	public Member_info mSearch(String loginid) {
		Member_info m = dao.Msearch(loginid);
		return m;
	}

	public int mCount() {
		int count = 0;
		count = dao.Mcount();
		return count;
	}

	public int mUpdate(HttpServletRequest request) {
		int re = 0;
		Member_info m = new Member_info();

		m.setMember_no((Integer.parseInt((String)(request.getParameter("member_id")))));
		System.out.println(m.getMember_no());
		m.setMember_addr((String) request.getParameter("member_addr"));
		m.setMember_addr_no((String) request.getParameter("member_addr_no"));
		m.setMember_birth((String) request.getParameter("member_birth"));
		m.setMember_detail_addr((String) request
				.getParameter("member_detail_addr"));
		m.setMember_email((String) request.getParameter("member_email"));
		m.setMember_gender((String) request.getParameter("member_gender"));
		m.setMember_homepage((String) request.getParameter("member_homepage"));
		m.setMember_id((String) request.getParameter("member_id"));
		m.setMember_name((String) request.getParameter("member_name"));
		m.setMember_phone((String) request.getParameter("member_phone"));
		m.setMember_pwd((String) request.getParameter("member_pwd"));
		m.setMember_telephone((String) request.getParameter("member_telephone"));
		re = dao.Mupdate(m);

		return 1;
	}

	public List<Recruit_Infor> Msmart(String loginId){
		List<Recruit_Infor> list= dao.Msmart(loginId);
	return list;
	}
	
	
	public int Elist(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Etp_infor> list = log.dao.Elist();
		int loggin = 0;
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getEtp_id().equals(request.getParameter("logid"))) {
				if (list.get(i).getEtp_pass()
						.equals(request.getParameter("logpwd"))) {
					loggin = 2;
					request.setAttribute("loginid", list.get(i).getEtp_id());
					request.setAttribute("loggin", loggin);
					return loggin;
				}
			}
		}
		return loggin;
	}

	
	public Etp_infor Esearch(String login_id){
		Etp_infor etp=null;
		etp=dao.Esearch(login_id);
				return etp;
	}
	

	
}