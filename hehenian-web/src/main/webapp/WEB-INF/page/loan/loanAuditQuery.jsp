<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/include/taglib.jsp"%>
<html>
<head>
<title>贷款审核</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
<meta http-equiv="description" content="This is my page" />
<%@ include file="/include/includeJs.jsp"%>
<script language="javascript" type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script>
<script>
/**
 * 校验手机
 * @param string 被校验的字符串
 */
function checkMobile(obj) {
     if(!(/^1[\d]{10}$/).test(obj.value)) {
    	 alert("请录入正确的手机号码！");
    	 obj.value="";
     }
}
</script>
		<style type="text/css">
			.bigBoss  tbody td input{width: 140px;}
		</style>
</head>
<body>
	<div id="right">
		<div style="padding: 15px 10px 0px 10px;">
			<div>
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="100" height="28" class="main_alll_h2"><a href="loanAuditInit.do">贷款审核</a></td>
						<td width="2">&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
				</table>
				<div
					style="padding-right: 10px; padding-left: 10px; padding-bottom: 10px; width: 95%; padding-top: 10px; background-color: #fff;">
					<form action="loanAuditInit.do" method="post">
						<table style="margin-bottom: 8px;" cellspacing="0" cellpadding="0" width="100%" border="0" class="bigBoss">
						<tbody>
							<tr>
								<td class="f66" align="left" width="80%" height="36px">&nbsp;&nbsp; 用户名 ： <input id="username"
									name="loanPersonDo.realName" value="${loanPersonDo.realName }" type="text"   onchange="checkMobile(this)"/>&nbsp;&nbsp; 
									手机号码 ： <input id="mobile"
									name="loanPersonDo.mobile" value="${loanPersonDo.mobile}" type="text" />
									<input id="btSearch" type="submit" value="查找" style="width: 60px;" />
								</td>
							</tr>
						</tbody>
					</table>
					</form>
					<div>
						<table id="help" style="color: #333333; width: 100%" cellspacing="1"
								cellpadding="3" bgcolor="#dee7ef" border="0">
								<tbody>
									<tr class=gvHeader>
										<th style="width: 5%;" scope="col">序号</th>
										<th scope="col">申请日期</th>
										<th scope="col">客户姓名</th>
										<th scope="col">手机号码</th>
										<th scope="col">借款金额</th>
										<th scope="col">借款用途</th>
										<th scope="col">小区名称</th>
										<th scope="col">操作</th>
									</tr>
									<c:choose>
										<c:when test="${pageDo.modelList == null}">
											<tr align="center" class="gvItem">
												<td colspan="14">暂无数据</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:set var="count" value="0" />
											<c:forEach items="${pageDo.modelList}" var="loanPersonDo">
												<tr class="gvItem">
													<c:set var="count" value="${count+1}" />
													<td align="center" style="width: 100px;">${count}<input type="hidden" class="loanPersonId" value="${loanPersonDo.loanPersonId}" /> </td>
													<td>
														<fmt:formatDate value="${loanPersonDo.applyTime}"  pattern="yyyy-MM-dd HH:mm:ss"/> 
													</td>
													<td>
														${loanPersonDo.realName} 
													</td>
													<td>
														${loanPersonDo.mobile} 
													</td>
													<td >
														<fmt:formatNumber value="${loanPersonDo.applyAmount}" pattern="##.##" minFractionDigits="2" /> 
													</td>
													<td>${loanPersonDo.loanUsage}</td>
													<td>
														${loanPersonDo.cname} 
													</td>
													<td>
														<c:if test="${loanPersonDo.loanDo.loanStatus == 'PROCESSING'}">
															<a href="javascript:queryRecheckById(${loanPersonDo.loanDo.loanId})">受理</a>
														</c:if>
														<c:if test="${loanPersonDo.loanDo.loanStatus != 'PROCESSING' && loanPersonDo.loanDo.loanStatus != 'NOPASS'}">
														<a href="javascript:queryById(${loanPersonDo.loanDo.loanId})">已审核</a>
														</c:if>
														<c:if test="${loanPersonDo.loanDo.loanStatus == 'NOPASS'}">
														<a href="javascript:queryById(${loanPersonDo.loanDo.loanId})">审核失败</a>
														</c:if>
													</td>
											</tr>
										</c:forEach>
									</c:otherwise>
									</c:choose>
							</tbody>
						</table>
						<shove:page curPage="${pageDo.currentPage}" showPageCount="10"
							pageSize="${pageDo.pageSize}" theme="jsText"
							totalCount="${pageDo.totalCount}" funMethod="toPage">
						</shove:page>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">

	function toPage(pageNo) {
		window.location.href = "loanAuditInit.do?loanPersonDo.realName=${loanPersonDo.realName}&loanPersonDo.mobile=${loanPersonDo.mobile}&curPage="
				+ pageNo + "&pageSize=10";
	}
	
	//受理
	function queryRecheckById(id) {
		$.jBox("iframe:loanAuditData.do?id=" + id, {
			title : "业务受理",
			width : 600,
			height : 580,
			top : 25,
			buttons : {
			}
		});
	}
	//处理中
	function queryById(id) {
		$.jBox("iframe:loanAuditQueryData.do?id=" + id, {
			title : "业务受理",
			width : 600,
			height : 580,
			top : 25,
			buttons : {

			}
		});
	}
</script>
</html>
