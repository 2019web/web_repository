配置说明
====

# 说明：

  后台框架: struts2.5 + spring4.3 + hibernate5.2
  前端框架: jquery + layer

## 开发配置：

### 数据库：

Navicat MySQL Data Transfer
Source Server         : mysql
Source Server Version : 50511
Source Host           : localhost:3306
Source Database       : book
Target Server Type    : MYSQL
Target Server Version : 50511
File Encoding         : 65001
<!-- 配置数据源 -使用c3p0连接池 -->
	<bean id="dataSource" class="com.mchange.v2.c3p0.ComboPooledDataSource" destroy-method="close">
		<property name="driverClass" value="com.mysql.jdbc.Driver" /><!-- 数据库驱动 -->
		<property name="jdbcUrl" value="jdbc:mysql://localhost:3306/book" /> <!-- 连接URL -->
		<property name="user" value="root" /> <!-- 数据库用户名 -->
		<property name="password" value="123456" /> <!-- 数据库密码 -->
		<!-- c3p0连接池参数配置 -->
        <property name="initialPoolSize" value="3" /><!-- 初始化连接数 -->
        <property name="minPoolSize" value="2" /><!-- 最小连接数 -->
        <property name="maxPoolSize" value="10" /><!-- 连接池中保留的最大连接数 -->
		<property name="maxIdleTime" value="28000" /><!-- 连接的过期时间(秒) -->
        <property name="idleConnectionTestPeriod" value="3600" /><!-- 检查连接池中的空闲连接间隔时间(秒) -->
	</bean>
	<!-- 配置hibernate - sessionFactory -->
	<bean id="sessionFactory" class="org.springframework.orm.hibernate5.LocalSessionFactoryBean">
		<property name="dataSource" ref="dataSource" />
		<!-- 实体类所在的包 对包中每个类进行注解扫描 省去逐一配置-->
		<property name="packagesToScan">
			<list><value>com.entity</value></list>
		</property>
		<!-- 配置Hibernate属性-->
		<property name="hibernateProperties">
			<props>
				<prop key="hibernate.show_sql">false</prop><!-- 是否打印sql语句-->
<prop>key="hibernate.dialect">org.hibernate.dialect.MySQLDialect</prop>
<!-- 数据库方言--><prop >key="hibernate.id.new_generator_mappings">
false</prop><!-- hibernate主键生成器 5.0版本后默认true -->
</props>
</property>
</bean>
<!-- 配置hibernate事务管理器 -->
<bean id="transactionManager" class="org.springframework.orm.hibernate5.HibernateTransactionManager">
    	<property name="sessionFactory" ref="sessionFactory"/>
</bean>
<!-- 使用注解-注册事务管理类或方法 -->
<tx:annotation-driven transaction-manager="transactionManager"/>

## 开发环境：

  javaEE jdk1.8
  Eclipse 
  Mysql5.5.11
  Tomcat v8.0 server
