package com.shop.servlet.user;

import com.service.userDao;
import com.shop.entity.shop_user;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/manage/admin_douserselect")
public class doUserSelect extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //获取所有的用户记录
        ArrayList<shop_user> list = userDao.selectAll();

        //放到请求对象域里面
        request.setAttribute("userlist",list);
        //重定向
        request.getRequestDispatcher("admin_user.jsp").forward(request,response);
    }
}
