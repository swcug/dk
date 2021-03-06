<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
	<%@ include file="../../include/top.jsp"%>
	<title>逾期</title>
	</head>
	<body>
		<section>
			<header>
				<div class="p1">
					<input type="search" id="searchStr" placeholder="姓名/手机号码" value="" class="txt w10 br1">
					<span class="pa icon_search"></span>
				</div>
				<div class=" db_f manage_nav">
					<a href="<c:url value='/app/mhk/loanManage/overdueRepayPage'/>" class="bf1 t_ac "><em>逾期</em></a> 
					<a href="<c:url value='/app/mhk/loanManage/stillRepayPage'/>" class="bf1 t_ac"><em>待还款</em></a> 
					<a href="<c:url value='/app/mhk/loanManage/hasRepayPage'/>" class="bf1 t_ac check"><em>已还款</em></a>
					<a href="<c:url value='/app/mhk/loanManage/repayedPage'/>" class="bf1 t_ac"><em>已还清</em></a>
				</div>
			</header>
			<article>
				<section id="dataBody">
				</section>
			</article>
		</section>
	
		<%@ include file="../../include/foot.jsp"%>
		<script>
		loadData();
		function loadData(){
			var searchStr = $('#searchStr').val();
			$.get('<c:url value="/app/mhk/loanManage/hasRepay.do"/>',{searchStr:searchStr,pageSize:30,pageNum:1}, function (result) {
				if(result.status == 1){
					alert(result.errorMsg);
					return ;
				}					
				var data =  result.data; 
				var str = '';
	       		for(var i in data) {
	       				var odStr = '已还款';
	       				str+='<article class="order_list">';
	       				str+='<div class="db_f order_head p1">';
	       				str+='<date class="bf1">'+data[i].loanTime+'</date>';
	       				str+=odStr+'</div>';
	       				str+='<div class="db_f p1 order_item">';
	       				str+='<div class="bf1">';
	       				str+='<p class="db_f">';
	       				str+='<label>借款金额：</label><span class="bf1">'+data[i].applyAmount+'</span>';
	       				str+='</p>';
	       				str+='<p class="db_f">';
	       				str+='<label>还款日期：</label><span class="bf1">'+data[i].repayDate+'</span>';
	       				str+='</p></div>';
	       				str+='<div class="bf1">';
	       				str+='<p class="db_f">';
	       				str+='<label>还款期数：</label><span>'+data[i].repayPeriod+'/'+data[i].loanPeriod+'</span>个月';
	       				str+='</p><p class="db_f">';
	       				str+='<label>还款金额：</label><span>'+data[i].stillPrincipal+'</span>元';
	       				str+='</p></div>';
	       				str+='</div>';
	       				str+='<div class="db_f p1">';
	       				str+='<span class="bf1"></span>';
	       				str+='<a href="'+'<c:url value="/app/mhk/loanManage/repayDetail.do?detailType=3&loanId='+data[i].loanId+'&repayPeriod='+data[i].repayPeriod+'"/>'+'" class="btn">查看</a>';
	       				str+='</div></article>';
	       		}
				$("#dataBody").html(str);
			});
		}	
		</script>
	</body>
</html>