package com.zx.servlet;

import com.zx.domain.User;
import com.zx.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/listUser.do")//此处使用的是servlet的注解，listUser.do要和index.jsp中的链接保持一致。
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//获取用户列表

        UserService userService= new UserService() {
            @Override
            public User checkName(String username) {
                return null;
            }

            @Override
            public boolean addUser(User u) {
                return false;
            }

            @Override
            public List<User> getListAll() {
                return null;
            }
        };//创建UserService对象，
        List list=userService.getListAll();
        request.setAttribute("list", list);
        request.getRequestDispatcher("/admin/coc_user.jsp").forward(request, response);//跳转到success.jsp页面

    }

}