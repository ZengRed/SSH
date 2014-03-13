CREATE DATABASE 'ssh';

USE 'ssh';

CREATE TABLE 'tbl_user'(
	'username' varchar(50) NOT NULL COMMENT '用户名'，
	'password' varchar(50) NOT NULL COMMENT '密码'，
	'gender' int(11) default '0' COMMENT '性别'，
	'birthDate' date default NULL COMMENT '出生日期'，
	'tel' varchar(255) default NULL COMMENT '联系电话'，
	'email' varchar(255) default NULL COMMENT 'Email'，
	'url' varchar(255) default NULL COMMENT '个人首页'，
    PRIMARY KEY ('username')
)ENGINE=InnoDB DEFAULT CHARSET=gb2312 COMMENT = '用户信息表'；