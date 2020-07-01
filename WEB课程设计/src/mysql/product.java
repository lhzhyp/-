package mysql;

import java.sql.Connection;
import java.sql.DriverManager;

public class product {
    // 声明Connection对象
    Connection con;
    // 驱动程序名
    String driver = "com.mysql.cj.jdbc.Driver"; //新版本多了个.cj.
    // URL指向要访问的数据库名 test
    String url = "jdbc:mysql://localhost:3306/demo?serverTimezone=UTC";
    // MySQL配置时的用户名
    String user = "root";
    // MySQL配置时的密码
    String password = "56834686";

//    try{
//        // 加载驱动程序
//        Class.forName(driver);
//        // 1.getConnection()方法，连接MySQL数据库！！
//        con = DriverManager.getConnection(url, user, password);
//    }catch(ClassNotFoundException e){
//        e.printStackTrace();
//
//    }
}
