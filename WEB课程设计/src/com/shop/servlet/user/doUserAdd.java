package com.shop.servlet.user;

import com.service.userDao;
import com.shop.entity.shop_user;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/manage/admin_doproductadd")
public class doUserAdd extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置字符集
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        String username = request.getParameter("username");
        String name = request.getParameter("name");
        String pwd = request.getParameter("passWord");
        String sex = request.getParameter("sex");
        String email = request.getParameter("email");
        String mobil = request.getParameter("mobil");
        String address = request.getParameter("address");

        //创建用户实体
        shop_user u = new shop_user(username,name,pwd,sex,email,mobil,address);

        //加入到数据库的用户表中

        int count = userDao.insert(u);

        //成功或失败重定向
        if(count>0){
            response.sendRedirect("admin_douserselect");
        }else{
            PrintWriter out = response.getWriter();
            out.write("<script>");
            out.write("alert('用户添加失败')");
            out.write("location.href='manage/admin_useradd.jsp'");
            out.write("<script>");

        }
    }
}
