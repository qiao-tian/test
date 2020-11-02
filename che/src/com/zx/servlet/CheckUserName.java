package com.zx.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zx.domain.User;
import com.zx.service.UserService;
import com.zx.service.imp.UserServicImpl;

/**
 * Servlet implementation class CheckUserName
 */
@WebServlet("/checkUserName")
public class CheckUserName extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 解决乱码问题
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		//2.  先获取 浏览器输入的用户名
		String username = request.getParameter("username");
		System.out.println("username:"+username);
		//2 查找数据库中是否存在这个用户名
		// 直接对接业务
		UserService service = new UserServicImpl();
		User user = service.checkName(username);
		// 3. 
		if(user==null){
			// 不存在  可以注册
			response.getWriter().println(0);
		}else{
			//存在了  则不允许点击注册
			response.getWriter().println(1);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
