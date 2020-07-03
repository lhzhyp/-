package com.shop.servlet.product;

import com.service.productDao;
import com.service.userDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/manage/admin_doproductdel")
public class doProductDel extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置字符集
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        String id = request.getParameter("id");

        //加入到数据库的用户表中
        int count = productDao.del(id);

        //成功或失败重定向
        if(count>0){
            response.sendRedirect("admin_productselect");
        }else{
            PrintWriter out = response.getWriter();
            out.write("<script>");
            out.write("alert('产品删除失败')");
            out.write("location.href='manage/admin_douserselect'");
            out.write("<script>");
        }
    }

}
