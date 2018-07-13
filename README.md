web_repository
====

# web网上书店

![Logo](https://raw.githubusercontent.com/2019web/web_repository/master/WikiPage_LOGO/LOGO.png)

## 项目开发环境：
*  部署在本地;
*  Window 10;
*  mysql-5.5.11-win32;
*  eclipse EE;
*  tomcat-8.0.45;
*  jdk1.8.0_45;
## 框架
*  后台框架: struts2.5 + spring4.3 + hibernate5.2
*  前端框架: jquery + layer
## 数据库表设计

*类目表: category：

|列名|	类型|	说明|	备注|
|-|:-:|:-:|:-:|
|id|	int|	id|	主键|
|name|	varchar|	名称	|


*图书表: book：

|列名|	类型|	说明|	备注|
|-|:-:|:-:|:-:|
|id	|int|	id|	主键|
|name|	varchar|	名称|	
|cover|	varchar|	封面地址|	
|price|	floatprice|	价格|	
|intro|	varchar|	简介|	
|auther|	varchar|	作者|	
|press|	varchar|	出版社|	
|pubdate|	date|	出版日期|	
|special|	bit|	是否特卖|	
|news|	bit|	是否最新|	
|sale|	bit|	是否促销|	
|category_id|	bit|	类目Id|	外键|


*订单表: indent：

|列名|	类型|	说明|	备注|
|-|：-：|：-：|:-:|
|id|	int|	id|	主键|
|total|	float|	总价|	
|amount|	float|	商品总数|	
|status|	tinyint|	状态|(1未处理/2已处理)|
|name|	varchar|	收货人姓名|	
|phone|	varchar|	收货人电话|	
|address|	varchar|	收货地址|	
|systime|	timestamp|	下单时间|	
|user_id|	int|	下单用户|	外键|


*订单项表: items：

|列名|	类型|	说明|	备注|
|-|：-：|：-：|：-：|
|id|	int|	id|	主键|
|price|	float|	购买时价格|	
|amount|	int|	数量|	
|book_id|	int|	图书id|	外键|
|indent_id|	int|	订单id|	外键|


*用户表: users：

|列名|	类型|	说明|	备注|
|-|：-：|：-：|：-：|
|id|	int|	id|	主键|
|username|	varchar|	用户名|	
|password|	varchar|	密码|	


*管理员表: admin：

|列名|	类型|	说明|	备注|
|-|:-:|:-:|:-:|
|id|	int|	id|	主键|
|username|	varchar|	用户名|	
|password|	varchar|	密码|	
|phone|	varchar|	电话|	
