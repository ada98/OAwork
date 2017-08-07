create database oa;

--员工表
	--员工编号
	--员工姓名
	--登录密码
	--性别
	--联系方式
	--邮箱
	--住址
	--身份证
	--工资
	--照片
	--在职状态
	--职务id
	--部门id
create table users(
	u_id int primary key auto_increment,
	u_name varchar(200) not null,
	u_pwd varchar(200) not null,
	u_sex varchar(2) default '男' not null,
	u_tel varchar(20) not null,
	u_email varchar(100),		
	u_dress varchar(100) ,			
	u_card varchar(30) not null,		
	s_alary double not null,		
	u_photo varchar(200) not null,		
	u_status int default 1,   		
	r_id int,
	d_id int,
	temp1 varchar(200),
	temp2 varchar(200)
);

--部门表
	--部门编号
	--部门名
create table department(
	d_id int primary key auto_increment,
	d_name varchar(100),
	temp1 varchar(200),
	temp2 varchar(200)
);

--职务表
	--职务编号
	--职务
	--上一级
	--下一级
create table role(
	r_id int primary key auto_increment,
	r_name varchar(100) not null,
	r_before varchar(100),
	r_next varchar(100),
	temp1 varchar(200),
	temp2 varchar(200)
);
			
--消息表
	--消息编号
	--标题
	--发送人
	--接收人
	--内容
	--发送时间
	--附件
	--是否已阅
create table message(
	m_id int primary key auto_increment,
	m_title varchar(200) not null,
	m_send int not null,
	m_recevie int not null,
	m_content varchar(200) not null,
	m_date date not null,
	m_file varchar(200),
	m_status int default 0,
	temp1 varchar(200),
	temp2 varchar(200)	
);

--公文表
	--公文编号
	--标题
	--发送人
	--公文时间
	--公文内容
	--查看次数
create table document(
	do_id int primary key auto_increment, 
	do_title varchar(200) not null,
	do_send int not null,
	do_time date,
	do_content varchar(100),
	do_see int default 0,
	temp1 varchar(200),
	temp2 varchar(200)
);

--先生成公文，交给上一级审批，然后根据审批人查看是否还有上一级，添加审批意见表数据

--审批意见表
	--必须用程序生成的id
	--公文编号
	--审批人
	--审批时间
	--审批意见  0为未审批，1为通过，2为未通过
	--审批理由
create table opinion(
	o_id int primary key auto_increment,
	do_id int not null,
	o_userid varchar(200),
	o_time date,
	o_opinion varchar(200) default 0,
	o_reason varchar(100),
	temp1 varchar(200),
	temp2 varchar(200)	
); 

--公告通知表
	--公告编号
	--标题
	--发布人
	--发布部门
	--公告内容
	--公告时间
create table notic(
	n_id int primary key auto_increment,
	n_title varchar(200) not null,
	n_send int not null,
	n_department varchar(100) not null,
	n_content varchar(100),
	n_time date,
	temp1 varchar(200),
	temp2 varchar(200)
)

--文件表
	--文件编号
	--文件名	
	--文件路径	
	--文件大小
	--外键，user表的id,文件发布者
	--上传时间
	--文件状态 是否可读。1代表可读，0代表不可读
create table file(
	fid int primary key auto_increment,
	fname varchar(200) not null,
	fpath varchar(200) not null,
	fsize double,
	fuser int,
	ftime date,
	fstatus int default 1 ,
	temp1 varchar(200),
	temp2 varchar(200)
);

alter table users
    add constraint fk_users
       foreign key( r_id ) references role(r_id);

alter table users
    add constraint fk_users_2
       foreign key( d_id ) references department(d_id);

alter table opinion
    add constraint fk_opinion
       foreign key( do_id ) references document(do_id);