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
    <link href="${pageContext.request.contextPath}/web/style/css/model.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/web/style/css/home.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/web/style/css/forum.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="${pageContext.request.contextPath}/web/style/js/jquery-1.4.2.js"></script>
    <script type="text/javascript">
        function tip()
        {
            var name=prompt("请输入挂号号码：","");
        }
    </script>
</head>
<body>
<%@include file="/web/view/header.jsp"%>

<!--中间主体-->
<div class="main-forum">
    <div class="forum">
        <div class="title">
            <span class="t1">咨询专区 /</span><span class="t2"> <a href="${pageContext.request.contextPath}/tie/sousou.do?mysle=0&page=1&keyword=0">结贴专区</a></span>
            <div class="range">范围：
                <select name="selectID" id="selectID">
                	<option value="--">选择</option>
                    <option value="0">全部</option>
                    <option value="1">心血管内科</option>
                                <option value="2">神经内科</option>
                                <option value="3">呼吸内科</option>
                                <option value="4">肾内科</option>
                                <option value="5">内分泌科</option>
                                <option value="6">消化内科</option>
                                <option value="7">血液内科</option>
                                <option value="8">急诊科</option>
                                <option value="9">普外科</option>
                                <option value="10">泌尿外科</option>
                                <option value="11">心胸外科</option>
                                <option value="12">肝胆外科</option>
                                <option value="13">骨外科</option>
                                <option value="14">神经外科</option>
                                <option value="15">脊椎外科</option>
                                <option value="16">整型外科</option>
                                <option value="17">妇产科</option>
                                <option value="18">儿科</option>
                                <option value="19">儿童保健科</option>
                                <option value="20">眼科</option>
                                <option value="21">麻醉科</option>
                                <option value="22">重症医学科</option>
                                <option value="23">感染性疾病科</option>
                                <option value="24">功能科</option>
                                <option value="25">检验科</option>
                                <option value="26">保健科</option>
                                <option value="27">口腔科</option>
                                <option value="28">耳鼻喉科</option>
                                <option value="29">皮肤科</option>
                                <option value="30">康复骨伤科</option>
                                <option value="31">肿瘤外科</option>
                                <option value="32">肿瘤内科</option>
                                <option value="33">中医科</option>
                                <option value="34">放射科</option>
                </select>
            </div>
            
        </div>
        <div class="forum-content">
        <c:if test="${page.records != null}">
         <c:forEach items="${page.records}" var="res">
            <div class="forum1">
                <div class="text1">
                    <div class="forum-title">
                        <a href="${pageContext.request.contextPath}/tie/chakan.do?id=${res.id}" style="color: green;font-size: large;">${res.title}</a>
                    </div>
                    <div class="forum-text" align="left">
                        发帖时间：<fmt:formatDate value="${res.pubtime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                    </div>
                </div>
                <div class="text2">
                <c:if test="${res.jiajing == true}">
                    <span class="special">精</span>
                    </c:if>
                    <c:if test="${res.zhiding == true}">
                    <span class="top">顶</span>
                     </c:if>
                </div>
               <div class="author"> 作者：<span class="name">${res.name }</span></div>
               <div class="subject">科目：<span class="sbj">${res.kemu }</span></div>
            </div>                     
           </c:forEach>
            </c:if>
            <c:if test="${page.totalpage == 0}">
            	<p style="font-size: xx-large;" align="center">没有相关的结果！</p>
            </c:if>
            <!-- 
            *********上面帖子，下面发帖
             -->
             <c:if test="${page != null}">
            <div class="page">
            <c:if test="${page.totalpage > 1}">
                <ul class="pagination">
                    <li><a href="${pageContext.request.contextPath}/tie/sousou.do?page=1&mysle=${page.mySle}">&laquo;</a></li>
                    <c:forEach begin="${page.startPage}" end="${page.lastPage}" var="e">
                            <li><a href="${pageContext.request.contextPath}/tie/sousou.do?page=${e}&mysle=${page.mySle}">${e}</a></li>
                     </c:forEach>
                    <li><a href="${pageContext.request.contextPath}/tie/sousou.do?page=${page.totalpage<=0?1:page.totalpage}&mysle=${page.mySle}">&raquo;</a></li>
                </ul>
                </c:if>
            </div>
            </c:if>
            <form action="${pageContext.request.contextPath}/tie/add.do" method="post">
            <input type="hidden" value="${user.username}" id="name" name="name">
            <input type="hidden" value="${user.limits}" id="limits" name="limits">
            <input type="hidden" value="${user.id}" id="id" name="id">
            <div class="input_forum">
                <div class="form-horizontal" role="form">
                    <div class="form-group">
                        <label class="col-md-2 control-label">帖子题目:</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="inputTitle" name="inputTitle">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 control-label">科目选择:</label>
                        <div class="col-md-4">
                            <select class="form-control" name="mysle" id="mysle">
                                <option value="心血管内科">心血管内科</option>
                                <option value="神经内科">神经内科</option>
                                <option value="呼吸内科">呼吸内科</option>
                                <option value="肾内科">肾内科</option>
                                <option value="内分泌科">内分泌科</option>
                                <option value="消化内科">消化内科</option>
                                <option value="血液内科">血液内科</option>
                                <option value="急诊科">急诊科</option>
                                <option value="普外科">普外科</option>
                                <option value="泌尿外科">泌尿外科</option>
                                <option value="心胸外科">心胸外科</option>
                                <option value="肝胆外科">肝胆外科</option>
                                <option value="骨外科">骨外科</option>
                                <option value="神经外科">神经外科</option>
                                <option value="脊椎外科">脊椎外科</option>
                                <option value="整型外科">整型外科</option>
                                <option value="妇产科">妇产科</option>
                                <option value="儿科">儿科</option>
                                <option value="儿童保健科">儿童保健科</option>
                                <option value="眼科">眼科</option>
                                <option value="麻醉科">麻醉科</option>
                                <option value="重症医学科">重症医学科</option>
                                <option value="感染性疾病科">感染性疾病科</option>
                                <option value="功能科">功能科</option>
                                <option value="检验科">检验科</option>
                                <option value="保健科">保健科</option>
                                <option value="口腔科">口腔科</option>
                                <option value="耳鼻喉科">耳鼻喉科</option>
                                <option value="皮肤科">皮肤科</option>
                                <option value="康复骨伤科">康复骨伤科</option>
                                <option value="肿瘤外科">肿瘤外科</option>
                                <option value="肿瘤内科">肿瘤内科</option>
                                <option value="中医科">中医科</option>
                                <option value="放射科">放射科</option>
                                
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 control-label">帖子内容:</label>
                        <div class="col-md-10">
                            <textarea name = "text" id="text" class="form-control" rows="4"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2 col-md-offset-5">
                            <button type="button" class="btn btn-success" id="tijiao" name="tijiao">提交</button>
                        </div>
                    </div>
                </div>
            </div>
            </form>
        </div>
    </div>
    <div class="star">
        <div class="popstar">
            <div class="text1">
                <span>人</span><span>气</span><span>之</span><span>星</span>
            </div>
            <ul class="num1">
                <li><h3>No.1 <a href="#"><span class="name"> 张三</span> <span class="grade"> 99.5分</span></a></h3></li>
                <li><h4>No.2 <a href="#"><span class="name"> 李四</span> <span class="grade"> 92分</span></a></h4></li>
                <li><h4>No.3 <a href="#"><span class="name"> 李四</span> <span class="grade"> 92分</span></a></h4></li>
                <li><h4>No.4 <a href="#"><span class="name"> 李四</span> <span class="grade"> 92分</span></a></h4></li>
                <li><h4>No.5 <a href="#"><span class="name"> 李四</span> <span class="grade"> 92分</span></a></h4></li>
            </ul>
            <div class="more">
                <a href="#" class="btn btn-info btn-sm">查看更多</a>
            </div>
        </div>
        <div class="popstar">
            <div class="text1">
                <span>活</span><span>跃</span><span>之</span><span>星</span>
            </div>
            <ul class="num1">
                <li><h3>No.1 <a href="#"><span class="name"> 张三</span> <span class="grade"> 99.5分</span></a></h3></li>
                <li><h4>No.2 <a href="#"><span class="name"> 李四</span> <span class="grade"> 92分</span></a></h4></li>
                <li><h4>No.3 <a href="#"><span class="name"> 李四</span> <span class="grade"> 92分</span></a></h4></li>
                <li><h4>No.4 <a href="#"><span class="name"> 李四</span> <span class="grade"> 92分</span></a></h4></li>
                <li><h4>No.5 <a href="#"><span class="name"> 李四</span> <span class="grade"> 92分</span></a></h4></li>
            </ul>
            <div class="more">
                <a href="#" class="btn btn-info btn-sm">查看更多</a>
            </div>
        </div>
    </div>
</div>

</body>
<script language="JavaScript">
$().ready(function(){
	$("#tijiao").click(function(){
		if('${user.username}'==''){
			alert('未登录不能发帖，清先登录！');
			return false;
		}
		var a1 = $("#inputTitle").val();
		var a2 = $("#text").val();
		var a3 = $("#mysle").val();
	//	alert(a1);
	//	alert(a2);
	//	alert(a3);
		$.post("${pageContext.request.contextPath}/tie/add.do",{id:"${user.id}",limits:"${user.limits}",name:"${user.username}",inputTitle:a1, mysle:a3, text:a2},function(date){
			if(date == 'yes'){
				location.href = "${pageContext.request.contextPath}/tie/sousou.do?page=1&mysle=0";
			      
			}
    	});
		 
	});
   $("#selectID").change(function(){
	   SelectChange();  
   });    
   
   function SelectChange(){
	   var selectValue = $("#selectID").val();
	   var selectValue1 = $("#selectID").text();
       if(selectValue=='全部'){
    	   location.href = "${pageContext.request.contextPath}/tie/sousou.do?page=1&mysle=0";
       }else{
    	   $("#select_id option[value='selectValue']").attr("selected", true);
    	   location.href = "${pageContext.request.contextPath}/tie/sousou.do?page=1&mysle="+selectValue;
       }
   }
});
</script>
</html>
