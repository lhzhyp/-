package com.shop.servlet.user;

import com.service.userDao;
import com.shop.entity.shop_user;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/manage/admin_touserupdate")
public class toUserUpdate extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String id = request.getParameter("id");

        //通过id到数据里面查找
        shop_user user = userDao.selectById(id);
        request.setAttribute("user",user);
        request.getRequestDispatcher("admin_usermodify.jsp").forward(request,response);

    }
}
