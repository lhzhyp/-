<%--
  Created by IntelliJ IDEA.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="admin_menu.jsp"%>
    <!--/sidebar-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="admin_index.jsp">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">用户管理</span></div>
        </div>

        <div class="result-wrap">
            <form name="myform" id="myform" method="post">
                <div class="result-title">
                    <div class="result-list">
                        <a href="admin_useradd.jsp"><i class="icon-font"></i>新增用户</a>

                    </div>
                </div>
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                            <th class="tc" width="5%"><input class="allChoose" name="" type="checkbox"></th>
                            <th>ID</th>
                            <th>姓名</th>
                            <th>性别</th>
                            <th>EMAIL</th>
                            <th>手机</th>
                            <th>操作</th>
                        </tr>

                        <c:forEach var="u" items="${userlist}">
                            <tr>

                            <td class="tc"><input name="id[]" value="${user_id}" type="checkbox"></td>

                                <td>${u.user_id}</td>
                                <td>${u.user_name}</td>
                                <td>${u.user_sex == 'T'?'男':'女'}</td>
                                <td> ${u.user_email}</td>
                                <td>${u.user_mobile}</td>

                            <td>
                                <a class="link-update" href="/manage/admin_touserupdate?id=${u.user_id}">修改</a>
                                <a class="link-del" href="/manage/admin_douserdel?id=${u.user_id}">删除</a>
                            </td>
                        </tr>
                     </c:forEach>

                        <%--<script>--%>
                            <%--function Delete(mess,url){--%>
                                <%--if(confirm(mess)){--%>
                                    <%--location.href(url);--%>
                                <%--}--%>
                            <%--}--%>
                        <%--</script>--%>

                     </table>

                </div>
            </form>
        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>
