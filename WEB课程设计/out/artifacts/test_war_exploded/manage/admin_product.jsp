<%@ page language="java"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/manage/admin_menu.jsp" %>
    <!--/sidebar-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="#">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">产品管理</span></div>
        </div>
     
        <div id="register" class="result-wrap">
            <form action="/manage/admin_douserdel" id="myform" method="post">
                <div class="result-title">
                    <div class="result-list">
                        <a href="/manage/admin_toproductadd"><i class="icon-font"></i>新增产品</a>
                     
                        <!--  a id="updateOrd" href="javascript:void(0)"><i class="icon-font"></i>更新排序</a -->
                    </div>
                </div>
                <div class="result-content">
                    <table class="result-tab" width="60%">
                        <tr>
            
                            <th>ID</th>
                            <th>商品名称</th>
                            <th>操作</th>
                           
                        </tr>
                        
                        <c:forEach var="p" items="${plist }">
                        	<tr>
                        		<td>${p.PRODUCT_ID }</td>
                        		<td><img src="/upload/${p.PRODUCT_NAME}.jpg" width="80" height="80">
                        			${p.PRODUCT_NAME }
                        		
                        		</td>
                        		<td>
                        			<a href="/manage/admin_productadd.jsp">修改</a>
                        			<a href="/manage/admin_doproductdel?id=${p.PRODUCT_ID }">删除</a>
                        		</td>
                        	</tr>
	                    </c:forEach>

                        
                    </table>
                    
                </div>
            </form>
        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>