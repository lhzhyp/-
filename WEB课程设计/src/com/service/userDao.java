package com.service;

import com.dao.Basedao;
import com.shop.entity.shop_user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * 加入数据库
 */
public class userDao {
    public static int insert(shop_user u){
        String sql = "insert into user values(?,?,?,?,?,?,?)";
        Object[] params = {
                u.getUser_id(),
                u.getUser_name(),
                u.getUser_password(),
                u.getUser_sex(),
                u.getUser_email(),
                u.getUser_mobile(),
                u.getUser_address()
        };

        return Basedao.exectuIUD(sql,params);
    }



    public static ArrayList<shop_user> selectAll(){
        ArrayList<shop_user> list = new ArrayList<shop_user>();
        //声明结果集
        ResultSet rs = null;
        //获取连接对象
        Connection conn = Basedao.getconn();
        PreparedStatement ps = null;

        try {
            String sql = "select * from user order by User_id";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            while(rs.next()){
                shop_user u = new shop_user(
                        rs.getString("user_id"),
                        rs.getString("user_name"),
                        rs.getString("user_password"),
                        rs.getString("user_sex"),
                        rs.getString("user_email"),
                        rs.getString("user_mobile"),
                        rs.getString("user_address")

                        );
                list.add(u);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            Basedao.closeall(rs,ps,conn);
        }

        return list;
    }

    /**
     * 通过id查找用户
     * @return
     */
    public static shop_user selectById(String id){
        shop_user u = null;
        //声明结果集
        ResultSet rs = null;
        //获取连接对象
        Connection conn = Basedao.getconn();
        PreparedStatement ps = null;

        try {
            String sql = "select * from user where user_id=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1,id);

            rs = ps.executeQuery();

            while(rs.next()){
                u = new shop_user(
                        rs.getString("user_id"),
                        rs.getString("user_name"),
                        rs.getString("user_password"),
                        rs.getString("user_sex"),
                        rs.getString("user_email"),
                        rs.getString("user_mobile"),
                        rs.getString("user_address")

                );
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            Basedao.closeall(rs,ps,conn);
        }

        return u;
    }

    public static int update(shop_user u){
        String sql = "update user set user_name=?,user_password=?,user_sex=?,user_email=?,user_mobile=?,user_address=? where user_id=? ";
        Object[] params = {
                u.getUser_name(),
                u.getUser_password(),
                u.getUser_sex(),
                u.getUser_email(),
                u.getUser_mobile(),
                u.getUser_address(),
                u.getUser_id()
        };

        return Basedao.exectuIUD(sql,params);
    }

    /**
     * 删除用户
     * @param id
     * @return
     */
    public static int del(String id){
        String sql = "delete from user where user_id=?";
        Object[] params = {id};
        return Basedao.exectuIUD(sql,params);
    }


    public static int selectByName(String id) {
        int count = 0;
        Connection conn = Basedao.getconn();
        PreparedStatement ps = null;
        ResultSet rs = null;



        try {
            String sql = "select * from user where user_id=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();

            while(rs.next()) {
                count = rs.getInt(1);
            }


        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally{
            Basedao.closeall(rs, ps, conn);
        }



        return count;
    }

    public static int selectByNM(String name, String pwd){
        int count =0;

        Connection conn = Basedao.getconn();
        PreparedStatement ps = null;
        ResultSet rs = null;



        try {
            String sql = "select * from user where user_id=? and user_password=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, pwd);
            rs = ps.executeQuery();

            while(rs.next()) {
                count = rs.getInt(1);
            }


        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally{
            Basedao.closeall(rs, ps, conn);
        }


        return count;

    }

    /**
     * 通过用户名和密码查询用户信息
     * @param name
     * @param pwd
     * @return
     */

    public static shop_user selectAdmin(String name, String pwd) {
        shop_user u = null;

        //声明结果集
        ResultSet rs = null;
        //获取连接对象
        Connection conn = Basedao.getconn();

        PreparedStatement ps = null;



        try {
            String sql = "select * from user where user_id=? and user_password=?";

            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, pwd);

            rs = ps.executeQuery();

            while(rs.next()) {
                u = new shop_user(
                        rs.getString("user_id"),
                        rs.getString("user_name"),
                        rs.getString("user_password"),
                        rs.getString("user_sex"),
                        rs.getString("user_email"),
                        rs.getString("ser_mobile"),
                        rs.getString("user_address")
                );




            }


        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            Basedao.closeall(rs, ps, conn);
        }

        return u;
   }



}
