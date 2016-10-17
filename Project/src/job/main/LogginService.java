package job.main;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.el.lang.ELSupport;


public class LogginService {

	private static LogginService log = new LogginService();
	private static MemberDao dao;

	public static LogginService getInstance() {
		dao = MemberDao.getInstance();
		return log;
	}

	public void insert(Member_info member) {

		int re = dao.insertPMember(member);
		System.out.println(re);
	}

	public void insert2(Etp_infor etp) {
		System.out.println("????");
		dao.insertEtpMember(etp);
	}

	public int Mlist(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException{
		List<Member_info> list = log.dao.Mlist();
		int loggin = 0;
		for (int i = 1; i < list.size(); i++) {
			if (list.get(i).getMember_id().equals(("logid"))) {
				if (list.get(i).getMember_pwd()
						.equals(request.getParameter("logpwd"))) {
					loggin = 1;
					System.out.println("aaa");
					System.out.println("성공");
					request.setAttribute("loginid", list.get(i).getMember_id());
					request.setAttribute("loggin", loggin);
					RequestDispatcher rd =
							request.getRequestDispatcher("main/mainDisplay.jsp");
					rd.forward(request, response);
				}else {
					return 0;
				}
			}else{
				return 0;
			}
		}
		return loggin;
	}
	
	public int Elist(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException{
		List<Etp_infor> list = log.dao.Elist();
		int loggin = 0;
		for (int i = 1; i < list.size(); i++) {
			if (list.get(i).getEtp_id().equals(("logid"))) {
				if (list.get(i).getEtp_pass()
						.equals(request.getParameter("logpwd"))) {
					loggin = 2;
					System.out.println("aaa");
					System.out.println("성공");
					request.setAttribute("loginid", list.get(i).getEtp_id());
					request.setAttribute("loggin", loggin);
					RequestDispatcher rd =
							request.getRequestDispatcher("main/mainDisplay.jsp");
					rd.forward(request, response);
				}else{
					return 0;
				}
			}else{
				return 0;
			}
		}
		return loggin;
	}
	
	
}