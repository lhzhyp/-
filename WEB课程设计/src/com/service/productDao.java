package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.dao.Basedao;
import com.shop.entity.shop_product;


public class productDao {
	
	public static int insert(shop_product p) {
		String sql = "insert into product values(null, ?, ?,?,?)";
		
		
		Object[] params = {
					p.getPRODUCT_NAME(),
					p.getPRODUCT_PRICE(),
					p.getPRODUCT_FILENAME(),
					p.getPRODUCT_STOCK()
					};
		
		return Basedao.exectuIUD(sql, params);
	}
	
	
	public static ArrayList<shop_product> selectAll() {
		ArrayList<shop_product> list = new ArrayList<shop_product>();
		//声明结果集
		ResultSet rs = null;
		//获取连接对象
		Connection conn = Basedao.getconn();
		
		PreparedStatement ps = null;
		
		
		
		try {
			String sql = "select * from product";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			 
			 while(rs.next()) {
				 shop_product p = new shop_product(
						 	rs.getInt("PRODUCT_ID"),
						 	rs.getString("PRODUCT_NAME"),
						 	rs.getInt("PRODUCT_PRICE"),
						 	rs.getString("PRODUCT_FILENAME"),
						 rs.getInt("PRODUCT_STOCK")
						 );
				 
				 
				 list.add(p);
				 
			 }
			 
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			Basedao.closeall(rs, ps, conn);
		}
		
		
		
		return list;
	}
	
	
	
	public static shop_product selectById(int id) {
		shop_product p = null;
		//声明结果集
		ResultSet rs = null;
		//获取连接对象
		Connection conn = Basedao.getconn();
		
		PreparedStatement ps = null;
		
		
		
		try {
			String sql = "select * from product where PRODUCT_ID=?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			 
			 while(rs.next()) {
				  p = new shop_product(
						 	rs.getInt("PRODUCT_ID"),
						 	rs.getString("PRODUCT_NAME"),
						 	rs.getInt("PRODUCT_PRICE"),
						 	rs.getString("PRODUCT_FILENAME"),
						  rs.getInt("PRODUCT_STOCK")
						 );
				 
				 
				
				 
			 }
			 
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			Basedao.closeall(rs, ps, conn);
		}
		
		
		
		return p;
	}

	
	public static ArrayList<shop_product> selectAllById(ArrayList<Integer> ids) {
		ArrayList<shop_product> lastlylist = new ArrayList<shop_product>();
		
		 shop_product p = null;
		//声明结果集
		ResultSet rs = null;
		//获取连接对象
		Connection conn = Basedao.getconn();
		
		PreparedStatement ps = null;
		
		
		
		try {
		    for(int i=0; i<ids.size(); i++) {
			
				String sql = "select * from product where PRODUCT_ID=?";
				ps = conn.prepareStatement(sql);
				ps.setInt(1, ids.get(i));
				rs = ps.executeQuery();
				 
				 while(rs.next()) {
					 p = new shop_product(
							 rs.getInt("PRODUCT_ID"),
							 rs.getString("PRODUCT_NAME"),
							 rs.getInt("PRODUCT_PRICE"),
							 rs.getString("PRODUCT_FILENAME"),
							 rs.getInt("PRODUCT_STOCK")
							 );
					 
					 
					 lastlylist.add(p);
					 
				 }
		    }
			 
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			Basedao.closeall(rs, ps, conn);
		}
		
		
		
		return lastlylist;
	}

	public static int del(String id){
		String sql = "delete from product where product_id=?";
		Object[] params = {id};
		return Basedao.exectuIUD(sql,params);
	}
}
