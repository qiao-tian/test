package com.zx.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zx.dao.UserDao;
import com.zx.dao.impl.UserDaoImpl;
import com.zx.domain.User;
import com.zx.service.UserService;
import com.zx.service.imp.UserServicImpl;
import com.zx.utils.MD5Utils;

/**
 * Servlet implementation class UserRegister
 */
@WebServlet("/userRegister")
public class UserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 处理乱码
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		// 2. 获取浏览器注册的时候输入信息   用户名 密码  邮箱
		//Parameter 参数: 
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String emal=request.getParameter("email");
		
		User user = new User(username, MD5Utils.md5(password),emal, 1, 1);
		//注册前验证是否存在
		UserDao dao = new UserDaoImpl();
		User userAdd = dao.checkName(username);

		if(userAdd==null){
			// 注册:
			UserService service = new UserServicImpl();
			boolean f = service.addUser(user);

			if(f==true){
				// 成功  跳转成功页面
				response.sendRedirect("/index.jsp");
			}else{
				//失败

				response.sendRedirect("/register.jsp");
				response.getWriter().write("<script>alert('注册失败！请重新注册');</script>");
			}
		}
		else {
			response.sendRedirect("/register.jsp");
			response.getWriter().write("<script type=\"text/javascript\">window.alert(\"查询语句执行出错！\");window.location=\"../KFPeopleAssess/TaskList.aspx\"</script>");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
