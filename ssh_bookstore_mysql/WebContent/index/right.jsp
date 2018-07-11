<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>

<div class="right_content">
	
	<s:if test="#session.indent!=null">
		<div class="cart">
			<div class="title">
				<a href="cart.action"><img src="images/cart.gif" alt="购物车" title="购物车"/></a>
			</div>
			<div class="home_cart_content">
					<span>共<s:property value="#session.indent.amount"/>本 | 总价: $<s:property value="#session.indent.total"/></span>
			</div>
			<s:if test="#session.indent!=null">
				<a href="cart.action" class="view_cart">查看购物车</a> 
			</s:if>
		</div>
	</s:if>

	
	<div class="title"><span class="title_icon"><img src="images/bullet3.gif"/></span>书店简介</div>
	<div class="about">
		<p>
			<img src="images/about.gif" class="right" /> 
			<p style="font-size:20px;color:#800;">110荣耀出品</p><br/><br/>
		三更灯火五更鸡，<br/><br/>
		正是男儿读书时。<br/><br/>
		黑发不知勤学早，<br/><br/>
		白首方悔读书迟。<br/><br/>
		
		</p>
	</div>
	
	
	<div class="right_box">
	
		<div class="title"><span class="title_icon"><img src="images/bullet4.gif"/></span>优惠促销</div>
		
		<s:iterator var="special" value="saleList">
			<div class="new_prod_box"> <a href="detail.action?bookid=${id}">${name}</a>
				<div class="new_prod_bg">
					<span class="new_icon"><img src="images/promo_icon.gif"/></span> 
					<a href="detail.action?bookid=${id}"><img src="../${cover}" class="thumb" border="0" /></a>
				</div>
			</div>
		</s:iterator>

	</div>


	<div class="right_box">
	
		<div class="title"><span class="title_icon"><img src="images/bullet5.gif"/></span>图书分类</div>
		<ul class="list">
			<s:iterator var="category" value="categoryList">
				<li><a href="category.action?categoryid=<s:property value="id"/>"><s:property value="name"/></a></li>
			</s:iterator>
		</ul>
		
	</div>
</div>
    
</body>
</html>