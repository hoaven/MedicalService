<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">


<html>
<head lang="en">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>论坛</title>
    <link href="${pageContext.request.contextPath}/web/style/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link href="http://apps.bdimg.com/libs/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/web/style/css/model.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/web/style/css/forum_content.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="${pageContext.request.contextPath}/web/style/js/jquery-1.4.2.js"></script>
    
</head>
<body>

<%@include file="/web/view/header.jsp"%>

<!--论坛内容-->
<div class="container">
    <div class="row">
        <div class="main-forum col-md-7">
            <div class="post_top">
                <h1 class="alt_title">
                <span class="s_title">
                    <span>${tie.title}</span>
                </span>
                </h1>
                <div class="alt_info">
                    <span>
                        楼主：
                        <a href="#">${tie.name}</a>
                    </span>
                    <span>时间：<fmt:formatDate value="${tie.pubtime}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
                    <span class="zan " id="zan" name="zan">
                        <a class="btn btn-default btn-sm" id="zan" name="zan">
                            <span class="glyphicon glyphicon-thumbs-up" id="zan" name="zan"></span><b class="count" id="shuzi" name="shuzi">${tie.znumb }</b>
                        </a>
                    </span>
                </div>
            </div>
            <div class="forum-content">
                ${tie.content }
            </div>
            <div class="alt_all">
                <h3>评论</h3>
                
               
               <c:forEach items="${page.records}" var="res" varStatus="status">
                <div class="alt_item">
                    <div class="alt_head">
                        <span>作者：<a href="#">${res.name}(${res.limits==1?'患者':'医生' })</a></span>
                        <span>时间：<fmt:formatDate value="${res.relaytime}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
                        <span class="level">${(page.pagenum-1)*4+status.count }楼</span>
                    </div>
                    <div class="alt_content">
                       ${res.content }
                    </div>
                
                </div>
                </c:forEach>
                
                
                 <c:if test="${page.totalpage == 0}">
            	<p style="font-size: xx-large;" align="center">没有相关的结果！</p>
            </c:if>
            <!-- 
            *********上面帖子，下面发帖
             -->
                <c:if test="${page.totalpage > 1}">
                <ul class="pagination">
                    <li><a href="${pageContext.request.contextPath}/tie/chakan.do?page=1&id=${tie.id}">&laquo;</a></li>
                    <c:forEach begin="${page.startPage}" end="${page.lastPage}" var="e">
                            <li><a href="${pageContext.request.contextPath}/tie/chakan.do?page=${e}&id=${tie.id}">${e}</a></li>
                     </c:forEach>
                    <li><a href="${pageContext.request.contextPath}/tie/chakan.do?page=${page.totalpage<=0?1:page.totalpage}&id=${tie.id}">&raquo;</a></li>
                </ul>
                </c:if>
                <form action="${pageContext.request.contextPath}/tie/huitie.do" method="post">
                <div class="pl">
                	<input type="hidden" value="${tie.id}" id="id" name="id">
		            <input type="hidden" value="${user.id}" id="userid" name="userid">
		            <input type="hidden" value="${user.limits}" id="pid" name="pid">
		            <input type="hidden" value="${user.username}" id="username" name="username">
                    <h3>发表评论：</h3>
                    <textarea rows="6" cols="100%" id="neirong" name="neirong"></textarea></br>
                    <button class="btn btn-success" type="button" id="tijiao" name="tijiao">提交</button>
                </div>
                </form>
            </div>
        </div>
        <aside class="col-md-3 sidebar">
            <div class="widget">
                <h4 class="hot">热点话题</h4>
                <ul>
                <c:forEach items="${tieba}" var="t" varStatus="status">
                    <li><a href="${pageContext.request.contextPath}/tie/chakan.do?id=${t.id}">${t.title }</a></li>
                   </c:forEach>
                </ul>
            </div>
        </aside>
    </div>
</div>



<%@include file="/web/view/footer.jsp"%>
</body>
<script language="JavaScript">
$().ready(function(){
        $("#zan").click(function(){
        	if('${user.username}'==''){
    			alert("请先登录");
    			return false;
    		}
        	$.post("${pageContext.request.contextPath}/tie/zanzan.do",{id:"${tie.id}",userid:"${user.id}",pid:"${user.limits}"},function(date){
        		if(date == 'no'){
        			alert('已赞过！');     			
        		}else{
        			var num = '${tie.znumb }';    			
        			num = '${tie.znumb+1 }';   			
        			$("#shuzi").html(num);
        		}
        	});
        }); 
	
	$("#tijiao").click(function(){
		var nn = $("#neirong").val();
		var st1 = "操";
		var st2 = "日你妈";
		var st3 = "麻痹";
		var st4 = "你麻痹";
		var st5 = "妈逼";
		var st6 = "你妈逼";
		if('${user.username}'==''){
			alert("请先登录");
			return false;
		}
		if('${tie.ifpermit}'=='1'){
			alert("该帖已经结贴，无法回复！");
			return false;
		}
		if(nn==''){
			alert("对不起，内容不能为空!");
			return false;
		}
		var st11 = nn.indexOf(st1);
		var st22 = nn.indexOf(st2);
		var st33 = nn.indexOf(st3);
		var st44 = nn.indexOf(st4);
		var st55 = nn.indexOf(st5);
		var st66 = nn.indexOf(st6);
		if(st11>=0||st22>=0||st33>=0||st44>=0||st55>=0||st66>=0){
			alert("存在违禁字句！");
			return false;
		}
		$("form:first").submit(); 
	});
})
</script>
</html>
