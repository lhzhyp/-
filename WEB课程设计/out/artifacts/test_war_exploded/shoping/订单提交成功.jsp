<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/30
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="css/win.css">
</head>
<body>
<div class="jb_order_top" >
    <div class="jb_order_topa">
        <div class="jb_order_topb">
            hi,欢迎您的到来！
            <a href="登录.html">登录</a> |
            <a href="注册.html">注册</a> |
            <a href="../index.jsp">返回主页</a> |
            <a>客服服务</a>
        </div>
    </div>
</div>
<div class="jb_order_logo">
    <a href="../index.jsp"><img src="../images/Logo.png" height="82" width="83" alt=""></a>
</div>
<div class="jb_order_middle">

    <div class="jb_order_paybg">
        <div class="jb_order_paybga">
            <p>您的订单号:<span style="color:#bd0003;font:bold 13px '微软雅黑';"> 666888888888</span></p>
            <p>应付金额:<span style="color:#e20413;font:bold 13px '微软雅黑';"> ￥98.8</span></p>

        </div>
        <div class="jb_order_paybgb">
            <p>送货时间: 工作日、双休日、假日均可送 时间段:不限</p>
            <p>支付方式: 在线银联支付</p>
        </div>
        <div class="jb_order_paybgc">
            <p>支付平台</p>
            <a href=""><img src="../images/order_d.jpg" height="43" width="137" alt=""></a>
        </div>
        <div class="jb_order_paybgd">
            <button class="jb_order_paybta">确认支付</button>
            <a href="../index.jsp"><button class="jb_order_paybta">返回首页</button></a>
            <a href="结算中心.jsp"><button class="jb_order_paybta">查看订单</button></a>
        </div>
    </div>
    <div class="jb_order_pic">
        <img src="../images/order_c.jpg" height="76" width="1200" alt="">
    </div>
</div>
<div>
    <iframe class="xst_foot" src="版权商标.jsp" frameborder="0"></iframe>
</div>
</body>
</html>
