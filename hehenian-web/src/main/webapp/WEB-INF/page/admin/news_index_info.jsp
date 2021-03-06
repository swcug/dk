<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/include/taglib.jsp"%>
<script type="text/javascript" src="../css/popom.js"></script>
<script type="text/javascript" src="../script/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="../script/jquery.shove-1.0.js"></script>
<script type="text/javascript" src="../css/admin/popom.js"></script>
<link rel="stylesheet" href="../css/jbox/Gray/jbox.css" type="text/css"></link>
<script language="javascript" type="text/javascript" src="../script/jbox/jquery.jBox-2.3.min.js"></script>
<script type="text/javascript">
	function editNews(id) {
		$.jBox("iframe:updateNewsInit.do?id=" + id, {
			title : "编辑",
			top : "2%",
			width : 800,
			height : 550,
			buttons : {
				'关闭' : true
			}
		});
	}

	function closeMthod() {
		window.jBox.close();
		window.location.reload();
	}
	function initCallBack(data) {
		$("#dataInfo").html(data);
	}
</script>
<div>
	<table id="help" style="width: 100%; color: #333333;" cellspacing="1" cellpadding="3" bgcolor="#dee7ef" border="0">
		<tbody>
			<tr class=gvHeader>
				<th scope="col">选中</th>
				<th scope="col">序号</th>
				<th scope="col">标题</th>
				<th scope="col">所属栏目</th>
				<th scope="col">发表人</th>
				<th scope="col">时间</th>
				<th scope="col">操作</th>
			</tr>
			<s:if test="pageBean.page==null || pageBean.page.size==0">
				<tr align="center" class="gvItem">
					<td colspan="8">暂无数据</td>
				</tr>
			</s:if>
			<s:else>
				<s:set name="counts" value="#request.pageNum" />
				<s:iterator value="pageBean.page" var="bean" status="s">
					<tr class="gvItem">
						<td><input id="gvNews_ctl02_cbID" class="downloadId" type="checkbox" value="${bean.id }" name="cb_ids" /></td>
						<td><s:property value="#s.count+#counts" /></td>
						<td align="left">${bean.title}</td>
						<td>${bean.type}</td>
						<td>${bean.userName}</td>
						<td>${bean.publishTime}</td>
						<td><a href="javascript:editNews(${bean.id})"> 编辑 </a> &nbsp;&nbsp; <a href="javascript:del(${bean.id})"> 删除 </a> &nbsp;&nbsp; <a href="javascript:preview(${bean.id})"> 预览 </a></td>
					</tr>
				</s:iterator>
			</s:else>
		</tbody>
	</table>
</div>
<table style="border-color: #fff; margin-top: 10px;" cellspacing="1" cellpadding="3" width="100%" align="center" border="0">
	<tbody>
		<tr>
			<td class="blue12" style="padding-left: 8px" align="left"><input id="chkAll" onclick="checkAll(this); " type="checkbox" value="checkbox" name="chkAll" style="vertical-align: -6px;" />
				全选 &nbsp;&nbsp;&nbsp;&nbsp; <input id="btnDel" onclick="dels();" type="button" value="删除选中记录" name="btnDel" /></td>
		</tr>
	</tbody>
</table>
<shove:page curPage="${pageBean.pageNum}" showPageCount="10" pageSize="${pageBean.pageSize }" theme="jsNumber" totalCount="${pageBean.totalNum}"></shove:page>
