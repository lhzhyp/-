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

@WebServlet("/manage/admin_douserupdate")
public class doUserUpDate extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        String userid = request.getParameter("userid");
        String name = request.getParameter("name");
        String pwd = request.getParameter("passWord");
        String sex = request.getParameter("sex");
        String email = request.getParameter("email");
        String mobil = request.getParameter("mobil");
        String address = request.getParameter("address");

        //创建用户实体
        shop_user user = new shop_user(userid,name,pwd,sex,email,mobil,address);

        //加入到数据库的用户表中

        int count = userDao.update(user);

        //成功或失败重定向
        if(count>0){
            response.sendRedirect("admin_douserselect");
        }else{
            PrintWriter out = response.getWriter();
            out.write("<script>");
            out.write("alert('用户修改失败')");
            out.write("manage/admin_touserupdate?id="+userid+"'");
            out.write("<script>");

        }
    }

}
