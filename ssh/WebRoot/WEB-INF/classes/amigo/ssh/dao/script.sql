CREATE DATABASE 'ssh';

USE 'ssh';

CREATE TABLE 'tbl_user'(
	'username' varchar(50) NOT NULL COMMENT '�û���'��
	'password' varchar(50) NOT NULL COMMENT '����'��
	'gender' int(11) default '0' COMMENT '�Ա�'��
	'birthDate' date default NULL COMMENT '��������'��
	'tel' varchar(255) default NULL COMMENT '��ϵ�绰'��
	'email' varchar(255) default NULL COMMENT 'Email'��
	'url' varchar(255) default NULL COMMENT '������ҳ'��
    PRIMARY KEY ('username')
)ENGINE=InnoDB DEFAULT CHARSET=gb2312 COMMENT = '�û���Ϣ��'��