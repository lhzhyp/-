<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/30
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>结算中心</title>
    <link rel="stylesheet" href="css/win.css">
</head>
<body>
<div class="jb_shopping_top" >
    <div class="jb_shopping_topa">
        <div class="jb_shopping_topb">
            hi,欢迎您的到来！
            <a href="登录.html">登录</a> |
            <a href="注册.html">注册</a> |
            <a href="../index.jsp">返回主页</a> |
            <a href="">客服服务</a>
        </div>
    </div>
</div>
<div class="jb_shopping_logo">
    <a href="../index.jsp"><img src="../images/Logo.png" height="82" width="83" alt=""></a>
</div>
<div class="jb_settle_con">

    <div class="jb_settle_conpng"><img src="../images/settle_one.png" height="45" width="665" alt=""></div>
    <div class="jb_add_outer" id="jb_add_outer"name="setdiv">
        <div class="jb_set_shxx" >
            <span class="jb_set_shxxa">收货信息</span>
            <i href="#" class="jb_set_shxxb"id="jb_set_shxxb" name="i">[修改]</i>
            <div class="jb_set_shxxc">
                <ul>
                    <li>姓名:<span class="jb_set_shxxd">测试数据</span></li>
                    <li>手机:<span class="jb_set_shxxd">13888888888</span></li>
                    <li>详细地址:<span class="jb_set_shxxe">北京 朝阳区 朝阳区五环内 测试数据</span></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="jb_addupdate_outer" id="jb_addupdate_outer" name="updatediv">
        <div class="jb_settle_xhf">
            <p>收货信息<i  class="jb_settle_xhfa" name="button1">[保存收货信息]</i></p>
            <div class="jb_settle_xhfb"><input type="radio" class="jb_settle_xhfd">&nbsp;<span>使用新地址</span></div>
            <ul>
                <li><span class="jb_settle_xhfj">收货人</span>：<input class="jb_settle_xhfe" type="text"></li>
                <li>地&nbsp;&nbsp;区:
                    <select class="jb_settle_xhfc">
                        <option>请选择...</option>
                        <option value="a">中国</option>
                        <option value="b">中国</option>
                        <option value="c">中国</option>
                        <option value="d">中国</option>
                        <option value="e">中国</option>
                    </select>
                    <span>配送与运费规则</span>
                </li>
                <li>详细地址：<input class="jb_settle_xhff" type="text"></li>
                <li><span>手&nbsp;&nbsp;机：</span><input type="text" class="jb_settle_xhfg"> 或者 电话:<input type="text" class="jb_settle_xhfh" value="区号"> _ <input class="jb_settle_xhfi" type="text" value="电话号码">
                    _ <input type="text" value="分机号" class="jb_settle_xhfh"></li>

            </ul>
            <div class="jb_settle_xhfk">
                <input type="checkbox">
                <span>设置为默认地址</span>
            </div>
            <button class="jb_settle_xhfl"id="jb_settle_xhfl"name="button">保存收货人信息</button>
        </div>
    </div>

    <div class="jb_set_delivery" id="jb_set_delivery" name="setdiv">
        <div class="jb_set_psxx">
            <div class="jb_set_psxxc">
                <span class='jb_set_shxxa'>配送信息</span>
                <i class='jb_set_shxxb' id="jb_set_shxxb"name="i">[修改]</i>
            </div>
            <span class='jb_set_psxxd'>快递：￥6</span>
            <span class='jb_set_psxxe'>工作日、双休日、假日均可配送：￥6</span>
        </div>
    </div>
    <div class="jb_update_delivery" id="jb_update_delivery" name="updatediv">
        <div class="jb_settle_fsp">
            <p>配送信息&nbsp; <i class="jb_settle_fspa"name="button1">[保存]</i></p>
            <div class="jb_settle_fspb"><span class="jb_settle_fspc">配送方式</span></div>
            <div class="jb_settle_fspd">
                <input type="radio" name="sty"><span>快速送货上门</span>
            </div>
            <div class="jb_settle_fspb"><span class="jb_settle_fspc">配送时间</span></div>
            <div class="jb_settle_fspd">
                <input type="radio" name="sty"><span>工作日、双休日、假日均可送货</span>
            </div>
            <div class="jb_settle_fspd">
                <input type="radio" name="sty"><span>只工作日送货</span>
            </div>
            <div class="jb_settle_fspd">
                <input type="radio" name="sty"><span>只双休日、假日送货</span>
            </div>
            <button class="jb_settle_fspe" id="jb_settle_fspe"name="button">保存配送方式</button>
        </div>
    </div>

    <div class="jb_set_pay" id="jb_set_pay" name="setdiv">
        <div class="jb_pay_way">
            <div class="jb_pay_waya">
                <span class="jb_set_shxxa">支付方式</span>
                <i class="jb_set_shxxb" name="i">[修改]</i>
            </div>
            <div class="jb_pay_wayb"></div>
            <p class="jb_pay_wayc">支付宝需要支付<span class="jb_pay_wayd">31.00</span>元</p>
            <p class="jb_pay_waye"><span class="jb_set_shxxa">附加消息</span>
                <a href="" class="jb_set_shxxb">[修改]</a></p>
            <ul>
                <li>收货单赠言:	</li>
                <li>收货单是否显示金额:是</li>
            </ul>
        </div>
    </div>
    <div class="jb_update_pay" id="jb_update_pay" name="updatediv">
        <div class="jb_setl_oppay">
            <p>支付方式&nbsp; <i  class="jb_settle_fspa"name="button1">
                [关闭]</i></p>
            <span class="jb_setl_oppaya">货到付款
			</span>
            <span class="jb_setl_oppayb"></span>
            <div class="jb_setl_oppayc">
                <div class="jb_setl_oppf">
                    <input type="radio" name="pay">
                    <span>现金</span>
                </div>
            </div>
            <div class="jb_setl_oppaye">

                <span class="jb_setl_oppaya"> <img src="../images/jb_jszk_n.jpg" alt="" class="jb_setl_oppg">在线支付</span>
                <span class="jb_setl_oppayb">
			    <span class="jb_setl_opph">支付平台:</span>
			    </span>
                <div class="jb_setl_oppayd">
                    <ul>
                        <li>
                            <input type="radio" name="pay">
                            <span class="jb_setl_oppayi"><img src="../images/jb_jszk_a.jpg" alt=""></span>
                        </li>
                        <li>
                            <input type="radio" name="pay">
                            <span class="jb_setl_oppayi"><img src="../images/jb_jszk_b.jpg" alt=""></span>
                        </li>
                    </ul>
                    <h1 class="jb_setl_oppayj">网银支付
                    </h1>
                    <div class="jb_setl_oppayk">
                        <ul>
                            <li>
                                <input type="radio" name="pay">
                                <span class="jb_setl_oppayi"><img src="../images/jb_jszk_c.jpg" alt=""></span>
                            </li>
                            <li>
                                <input type="radio" name="pay">
                                <span class="jb_setl_oppayi"><img src="../images/jb_jszk_d.jpg" alt=""></span>
                            </li>
                            <li>
                                <input type="radio" name="pay">
                                <span class="jb_setl_oppayi"><img src="../images/jb_jszk_e.jpg" alt=""></span>
                            </li>
                            <li>
                                <input type="radio" name="pay">
                                <span class="jb_setl_oppayi"><img src="../images/jb_jszk_f.jpg" alt=""></span>
                            </li>
                            <li>
                                <input type="radio" name="pay">
                                <span class="jb_setl_oppayi"><img src="../images/jb_jszk_g.jpg" alt=""></span>
                            </li>
                        </ul>
                    </div>
                    <div>
                        <ul>
                            <li>
                                <input type="radio" name="pay">
                                <span class="jb_setl_oppayi"><img src="../images/jb_jszk_h.jpg" alt=""></span>
                            </li>
                            <li>
                                <input type="radio" name="pay">
                                <span class="jb_setl_oppayi"><img src="../images/jb_jszk_i.jpg" alt=""></span>
                            </li>
                            <li>
                                <input type="radio" name="pay">
                                <span class="jb_setl_oppayi"><img src="../images/jb_jszk_j.jpg" alt=""></span>
                            </li>
                        </ul>
                    </div>

                </div>
                <input type="button" value="保存支付信息" class="jb_setl_oppayl" name="button">
            </div>
        </div>
    </div>

    <div class="jb_set_billgoods" id="jb_set_billgoods">
        <div class="jb_prodect_list">
            <p>商品清单<a href="jb_shopping.html" target="_blank" class="jb_prodect_lista">返回购物车&gt;&gt;</a></p>
            <div class="jb_prodect_spmc"></div>
            <div class="jb_prodect_spmd">
                <span class="jb_prodect_spme">红华自营</span>
            </div>
            <div class="jb_prodect_spmf">
                <span>长虹60寸液晶LED平板电视</span>
                <ul>
                    <li class="jb_prodect_spmfam">￥25.00</li>
                    <li class="jb_prodect_spmfa">0</li>
                    <li>1</li>
                    <li class="jb_prodect_spmfb">0.4</li>
                    <li>￥25.00</li>
                </ul>
            </div>
            <div class="jb_prodect_spmd">
                <span class="jb_prodect_spme">飞利浦</span>
            </div>
            <div class="jb_prodect_spmf">
                <span>飞利浦60寸液晶LED平板电视</span>
                <ul>
                    <li class="jb_prodect_spmfam">￥25.00</li>
                    <li class="jb_prodect_spmfa">0</li>
                    <li>1</li>
                    <li class="jb_prodect_spmfb">0.4</li>
                    <li>￥25.00</li>
                </ul>
            </div>
            <div class="jb_weight_pay">
                <div class="jb_weight_paya">
                    <p class="jb_weight_payc">重量总计:0.40kg 商品金额：  ￥25.00</p>
                    <p>商品金额:<span class="jb_weight_payb">￥25.00</span>+运费：  <span class="jb_weight_payb">6.00</span>=应付：<span class="jb_weight_payb">31.00</span></p>
                </div>
            </div>
        </div>
    </div>

    <div class="jb_set_invoice" id="jb_set_invoice" name="setdiv">
        <div class="jb_askfor_lt">
            <span class="jb_askfor_lta" name="i">+</span>
            <i class="jb_askfor_ltb">索要发票[修改]</i>
            <p>应付金额：￥<span class="jb_askfor_ltc">31.00</span></p>
            <a href="订单提交成功.jsp"><button class="jb_askfor_ltd">提交订单</button></a>
        </div>
    </div>
    <div class="jb_update_invoice" id="jb_update_invoice" name="updatediv">
        <div class="jb_setle_pfys">
            <div class="jb_setle_pfysa">
                <div class="jb_setle_pfysb">
                    <span class="jb_setle_pfysc">-</span><i class="jb_setle_pfysd"name="button1">索要发票[关闭]</i>
                </div>
                <div class="jb_setle_pfyse">
                    <p>发票抬头:&nbsp;&nbsp;<input class="jb_setle_pfysf" type="text" value="康师傅流口水的广告"></p>

                </div>
                <div class="jb_setle_pfysg">
                    <p>发票内容:&nbsp;&nbsp;&nbsp;
                        <input type="radio">食品
                        <input type="radio">米
                    </p>
                </div>
                <div class="jb_setle_pfysh">
                    <p>
                        <span class="jb_setle_pfysi"><img src="../images/jb_jszk_l.jpg" alt=""></span>
                        发票金额不包含使用金额卡和折扣券支付的相应金额。
                    </p>
                    <p class="jb_setle_pfysj">
                        <span class="jb_setle_pfysk"><img src="../images/jb_jszk_l.jpg" alt=""></span>
                        发票金额不包含使用金额卡和折扣券支付的相应金额。
                    </p>
                    <input class="jb_setle_pfysl" type="button" value="保存发票信息" name="button">
                    <input class="jb_setle_pfysm" type="button" value="暂不需要">
                </div>

            </div>
            <div class="jb_setle_pfysn">
                <p>应付金额: ￥<span>31.00</span></p>
                <a href="订单提交成功.jsp"><input class="jb_setle_pfysp" type="button" value="提交订单"></a>
            </div>
        </div>
    </div>
</div>
<div>
    <iframe class="xst_foot" src="版权商标.jsp" frameborder="0"></iframe>
</div>
<script>
    var jbSetAdd= document.getElementsByName("i");
    var jbUpdateAdd= document.getElementsByName("button");
    var jbshut = document.getElementsByName("button1");
    var  jbAddOuter= document.getElementsByName("setdiv");
    var  jbAddupdateOuter= document.getElementsByName("updatediv");
    console.log(jbAddupdateOuter);
    for(var i = 0;i<jbSetAdd.length;i++){
        (function(i){
            jbSetAdd[i].onclick = function(){
                switch(i){
                    case 0:
                        jbAddOuter[i].style.overflow="hidden";
                        jbAddOuter[i].style.height="0";
                        jbAddupdateOuter[i].style.overflow="none";
                        jbAddupdateOuter[i].style.height="400px";
                        break;
                    case 1:
                        jbAddOuter[i].style.overflow="hidden";
                        jbAddOuter[i].style.height="0";
                        jbAddupdateOuter[i].style.overflow="none";
                        jbAddupdateOuter[i].style.height="410px";
                        break;
                    case 2:
                        jbAddOuter[i].style.overflow="hidden";
                        jbAddOuter[i].style.height="0";
                        jbAddupdateOuter[i].style.overflow="none";
                        jbAddupdateOuter[i].style.height="430px";
                        break;
                    case 3:
                        jbAddOuter[i].style.overflow="hidden";
                        jbAddOuter[i].style.height="0";
                        jbAddupdateOuter[i].style.overflow="none";
                        jbAddupdateOuter[i].style.height="260px";
                        break;
                }

            }
        })(i);
    }
    for(var j = 0;j<jbUpdateAdd.length;j++){
        (function(j){
            function update(){
                switch(j){
                    case 0:
                        jbAddupdateOuter[j].style.overflow="hidden";
                        jbAddupdateOuter[j].style.height="0";
                        jbAddOuter[j].style.overflow="none";
                        jbAddOuter[j].style.height="140px";
                        break;
                    case 1:
                        jbAddupdateOuter[j].style.overflow="hidden";
                        jbAddupdateOuter[j].style.height="0";
                        jbAddOuter[j].style.overflow="none";
                        jbAddOuter[j].style.height="92px";
                        break;
                    case 2:
                        jbAddupdateOuter[j].style.overflow="hidden";
                        jbAddupdateOuter[j].style.height="0";
                        jbAddOuter[j].style.overflow="none";
                        jbAddOuter[j].style.height="125px";
                        break;
                    case 3:
                        jbAddupdateOuter[j].style.overflow="hidden";
                        jbAddupdateOuter[j].style.height="0";
                        jbAddOuter[j].style.overflow="none";
                        jbAddOuter[j].style.height="125px";
                        break;
                }
            }
            jbUpdateAdd[j].onclick = function(){update();}
            jbshut[j].onclick = function(){update();}
        })(j);
    }
</script>
</body>
</html>
