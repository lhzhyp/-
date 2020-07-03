<%--
  Created by IntelliJ IDEA.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
  <head>
    <title>数码商城</title>

      <%--引入初始化样式--%>
      <link rel="stylesheet" href="css/base.css">
      <%--引入公共样式--%>
      <link rel="stylesheet" href="css/comment.css">

  </head>
  <body>
      <%--快捷导航--%>
        <section class="shortcut">
            <div class="W">
                <div class="fl">
                    <ur>
                        <li>商城首页 &nbsp;&nbsp;</li>
                        <li>Hi，欢迎来到商城 &nbsp;&nbsp;</li>
                        <li>
                            <a href="shoping/登录.html">请登录&nbsp;&nbsp;</a>
                            <a href="shoping/注册.html">免费注册</a>
                        </li>
                    </ur>
                </div>
                <div class="fr">
                    <ur>
                        <li><a href="shoping/结算中心.jsp" class="car">购物车</a></li>
                        <li class="shuxian"></li>
                        <li>收藏夹</li>
                        <li class="shuxian"></li>
                        <li>商家支持</li>
                        <li class="shuxian"></li>
                        <li>网站导航</li>

                    </ur>
                </div>
            </div>
        </section>

      <%--头部模块制作--%>
        <header class="header W">
            <%--logo模块--%>
            <div class="logo">
                <h1>
                    <a href="index.jsp">数码商城</a>
                </h1>
            </div>
            <%--search搜索--%>
            <div class="search">
                <input type="search" name="" id="" placeholder="搜索智能设备">
                <button>搜索</button>
            </div>

            <%--二维码--%>
            <div class="searchlogo">
                <img src="../images/searchlogo.jpg" alt="" >
            </div>

        </header>

        <%--产品推荐--%>
        <div class="box W">
            <div class="box-hd"><h3>智能设备</h3></div>
            <div class="box-bd">
                <ul>
                    <li>
                        <img src="upload/智能手环.jpg" alt="">
                        <p class="name">智能手环</p>
                        <p class="review">大屏彩显，20天长长续航</p>
                        <p><span class="money">169元&nbsp;&nbsp;&nbsp;&nbsp;</span>|
                            <a href="#"><img src="upload/购物车.png" alt=""> </a>
                        </p>
                    </li>
                    <li>
                        <img src="upload/智能门锁.jpg" alt="">
                        <p class="name">智能门锁</p>
                        <p class="review">一步推拉，高端智能门锁</p>
                        <p><span class="money">1699元&nbsp;&nbsp;&nbsp;&nbsp;</span>|
                            <a href="#"><img src="upload/购物车.png" alt=""> </a>
                        </p>
                    </li>
                    <li>
                        <img src="upload/全面屏电视.jpg" alt="">
                        <p class="name">全面屏电视</p>
                        <p class="review">全面屏设计，人工智能语音</p>
                        <p><span class="money">1699元&nbsp;&nbsp;&nbsp;&nbsp;</span>|
                            <a href="#"><img src="upload/购物车.png" alt=""> </a>
                        </p>
                    </li>
                    <li>
                        <img src="upload/无线蓝牙耳机.jpg" alt="">
                        <p class="name">无线蓝牙耳机</p>
                        <p class="review">智能真无线，轻松舒适戴</p>
                        <p><span class="money">329元&nbsp;&nbsp;&nbsp;&nbsp;</span>|
                            <a href="#"><img src="upload/购物车.png" alt=""> </a>
                        </p>
                    </li>
                    <li>
                        <img src="upload/智能体脂称.jpg" alt="">
                        <p class="name">智能体脂称</p>
                        <p class="review">轻松掌握身体脂肪率</p>
                        <p><span class="money">99元&nbsp;&nbsp;&nbsp;&nbsp;</span>|
                            <a href="#"><img src="upload/购物车.png" alt=""> </a>
                        </p>
                    </li>
                    <li>
                        <img src="upload/智能电饭煲.jpg" alt="">
                        <p class="name">智能电饭煲</p>
                        <p class="review">890w 立体加热</p>
                        <p><span class="money">299元&nbsp;&nbsp;&nbsp;&nbsp;</span>|
                            <a href="#"><img src="upload/购物车.png" alt=""> </a>
                        </p>
                    </li>
                    <li>
                        <img src="upload/智能空调.jpg" alt="">
                        <p class="name">智能空调</p>
                        <p class="review">出众静音，快速制冷热</p>
                        <p><span class="money">1499元&nbsp;&nbsp;&nbsp;&nbsp;</span>|
                            <a href="#"><img src="upload/购物车.png" alt=""> </a>
                        </p>
                    </li>
                    <li>
                        <img src="upload/智能音箱.jpg" alt="">
                        <p class="name">智能音箱</p>
                        <p class="review">听音乐，语音遥控家电</p>
                        <p><span class="money">99元&nbsp;&nbsp;&nbsp;&nbsp;</span>|
                            <a href="#"><img src="upload/购物车.png" alt=""> </a>
                        </p>
                    </li>
                    <li>
                        <img src="upload/洗烘一体机.jpg" alt="">
                        <p class="name">洗烘一体机</p>
                        <p class="review">智能洗烘，省心省力</p>
                        <p><span class="money">2999元&nbsp;&nbsp;&nbsp;&nbsp;</span>|
                            <a href="#"><img src="upload/购物车.png" alt=""> </a>
                        </p>
                    </li>
                    <li>
                        <img src="upload/笔记本电脑.jpg" alt="">
                        <p class="name">笔记本电脑</p>
                        <p class="review">全面均衡的国民轻薄本</p>
                        <p><span class="money">4699元&nbsp;&nbsp;&nbsp;&nbsp;</span>|
                            <a href="#"><img src="upload/购物车.png" alt=""> </a>
                        </p>
                    </li>
                    <li>
                        <img src="upload/智能手机.jpg" alt="">
                        <p class="name">智能手机</p>
                        <p class="review">轻薄5G手机</p>
                        <p><span class="money">2099元&nbsp;&nbsp;&nbsp;&nbsp;</span>|
                            <a href="#"><img src="upload/购物车.png" alt=""> </a>
                        </p>
                    </li>
                    <li>
                        <img src="upload/LED随身灯.jpg" alt="">
                        <p class="name">LED随身灯</p>
                        <p class="review">小巧轻便，5级亮度调节</p>
                        <p><span class="money">19.9元&nbsp;&nbsp;&nbsp;&nbsp;</span>|
                            <a href="#"><img src="upload/购物车.png" alt=""> </a>
                        </p>
                    </li>
                    <li>
                        <img src="upload/驱蚊器.jpg" alt="">
                        <p class="name">驱蚊器</p>
                        <p class="review">3个装，长效驱蚊</p>
                        <p><span class="money">129元&nbsp;&nbsp;&nbsp;&nbsp;</span>|
                            <a href="#"><img src="upload/购物车.png" alt=""> </a>
                        </p>
                    </li>
                    <li>
                        <img src="upload/充电宝.jpg" alt="">
                        <p class="name">充电宝</p>
                        <p class="review">10000mAh大电量</p>
                        <p><span class="money">59元&nbsp;&nbsp;&nbsp;&nbsp;</span>|
                            <a href="#"><img src="upload/购物车.png" alt=""> </a>
                        </p>
                    </li>
                    <li>
                        <img src="upload/小爱老师.jpg" alt="">
                        <p class="name">小爱老师</p>
                        <p class="review">英语提分利器</p>
                        <p><span class="money">499元&nbsp;&nbsp;&nbsp;&nbsp;</span>|
                            <a href="#"><img src="upload/购物车.png" alt=""> </a>
                        </p>
                    </li>

                </ul>
            </div>
        </div>
  </body>
</html>
