<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<title>团购项目管理</title>
<link href="assets/css/dpl-min.css" rel="stylesheet">
<link href="assets/css/bui-min.css" rel="stylesheet">
</head>
<body>


	<table cellspacing="0" class="table table-bordered">
      <thead>
        <tr><th colspan="5">
        <ul class="toolbar">
          <li><label class="checkbox"><input type="checkbox"><a href="#">全选</a></label></li>
          <li><button class="button button-danger"><i class="icon-white icon-trash"></i>批量删除</button></li>
          <li><a href="admin/groupBuy_input" class="button button-success">添加</a></li>
        </ul>
        </th></tr>
        <tr>
          <th width="15"></th>
          <th>#</th>
          <th>名称</th>
          <th>价格</th>
          <th>商品原价</th>
          <th>操作</th>
        </tr>
      </thead>
      <tbody>
      	<s:iterator value="pageModel.objects">
        <tr>
          <td><input type="checkbox"></td>
          <td><s:property value="id"/></td>
          <td><s:property value="name"/></td>
          <td><s:property value="price"/></td>
          <td><s:property value="goods.nowPrice"/></td>
          <td>
          	<a class="button button-dangerous" href="admin/groupBuy_delete?id=<s:property value="id"/>" class="button">删除</a>
          	<a class="button" class="button">更改</a></td>
        </tr>
        </s:iterator>
      </tbody>
    </table>
    <div>
      <div class="pagination pull-right">
        <ul>
          <li<s:if test="pageNum==1"> class="disabled"</s:if>><a href="<s:property value="pageModel.url" /><s:property value="pageNum-1" />">« 上一页</a></li>
          <s:iterator value="pageModel.pageNumList" status="st" >
          <s:if test="#st.index+1==pageNum">
          	<li class="active"><a href="<s:property value="pageModel.url" /><s:property value="#st.index+1" />"><s:property value="#st.index+1" /></a></li>
          </s:if>
          <s:if test="#st.index+1!=pageNum">
          	<li><a href="<s:property value="pageModel.url" /><s:property value="#st.index+1" />"><s:property value="#st.index+1" /></a></li>
          </s:if>
          </s:iterator>
          <li <s:if test="pageNum==pageModel.countPage" >class="disabled"</s:if>><a href="<s:property value="pageModel.url" /><s:property value="pageNum+1" />">下一页 »</a></li>
        </ul>
      </div>
    </div>
</body>
</html>