package com.zx.servlet;

import com.zx.dao.UserDao;
import com.zx.dao.impl.UserDaoImpl;
import com.zx.domain.User;
import com.zx.utils.MD5Utils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/userLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1 解决乱码问题
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		//2. 获取参数  在输入框输入的用户名和密码
		String username = request.getParameter("username");
		String password = request.getParameter("password");		
		
		// 3 访问数据库
		
		UserDao dao = new UserDaoImpl();
		User user = dao.checkName(username);
		
		if(user!=null){
			// mima 123
			// shrude 456 
		// 根据用户名查到了一个对象, 但是密码对不对呢?
			// 还要再去判断密码JSESSIONID jsessionid
			// 这是从数据库获取的密码
			if(MD5Utils.md5(password).equals(user.getPassword())){
				//先将数据存储
				// 可以存储一次会话过程中的数据
				HttpSession session = request.getSession();
				session.setAttribute("loginUser", user);

				// 登录成功
				response.sendRedirect("/admin/demo/main.jsp");
			}else{
				// 登录失败
				response.sendRedirect("index.jsp");
			}
		}
		

		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
