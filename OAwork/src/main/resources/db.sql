create database oa;

--部门表
	--部门编号
	--部门名
	
	--部门邮箱(暂不加入)
create table department(
	d_id int primary key auto_increment,
	d_name varchar(100) not null unique,
	temp1 varchar(200),
	temp2 varchar(200)
);
select * from notice;
--职务表
	--职务编号
	--职务
	--上一级
	--下一级
create table role(
	r_id int primary key auto_increment,
	r_name varchar(100) not null unique,
	r_before varchar(100),
	r_next varchar(100),
	temp1 varchar(200),
	temp2 varchar(200)
);

--员工表        			工号+密码登录  而不采用 姓名+密码登录 ，防止重名的情况
	--员工编号
	
	--工号	u_wid	0001、0002、0003、0004

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
	--部门名
	--职务名
	
	--入职时间
	
create table users(
	u_id int primary key auto_increment,
	u_wid varchar(100) not null,
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
	
	d_name varchar(100) ,
	r_name varchar(100) not null,
	u_date date not null,
	
	temp1 varchar(200),
	temp2 varchar(200)
);

drop table users;

			
--消息表
	--消息编号
	--标题
	--发送人  id
	--接收 id
	--内容
	--发送时间
	--附件    文件id
	--是否已阅  0未阅  1已阅
create table message(
	m_id int primary key auto_increment,
	m_title varchar(200) not null,
	m_send int not null,
	m_recevie int not null,
	m_content varchar(4000) not null,
	m_date date not null,
	fid int,
	m_status int default 0, 
	temp1 varchar(200),
	temp2 varchar(200)	
);


--文件表的u_id外键
alter table message
    add constraint fk_message_fid
       foreign key(fid ) references file(fid);


--公文表
	--公文编号
	--标题
	--发送人 id
	--公文时间
	--公文内容
	--查看次数（点击数）
	
	--接收人
	--审批状态 0为未审批，1为通过，2为未通过
create table document(
	do_id int primary key auto_increment, 
	do_title varchar(200) not null,
	do_send int not null,
	do_time date not null,
	do_content varchar(4000),
	do_see int default 0,
	temp1 varchar(200),
	temp2 varchar(200),
	
	do_receive int not null,
	do_status int default 0
);
--	发送：1.生成一条公文记录 2.根据接收人还要创建一条意见表记录。
--	接收：1.修改意见表记录  2.查询审批人是否有上一级，有则创建意见表数据。无，则流程结束，修改公文状态为通过；
--	发送方查询是否审批通过：1.查询出所有的公文记录列表
	
--先生成公文，交给上一级审批，然后根据审批人查看是否还有上一级，添加审批意见表数据

--审批意见表
	--必须用程序生成的id 主键
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
	o_reason varchar(4000),
	temp1 varchar(200),
	temp2 varchar(200)	
); 

--公告通知表
	--公告编号
	--标题
	--发布人姓名
	--发布部门
	--公告内容
	--公告时间
	
	--附件ID  =文件id
	--权重   0：代表一般 1.重要  2.特别重要
	
	--浏览次数 
create table notice(
	n_id int primary key auto_increment,
	n_title varchar(200) not null,
	u_name varchar(200) not null,
	d_name varchar(100) ,
	n_content varchar(4000),
	n_time date not null,
	n_file varchar(200),
	n_weight int  default 0 ,
	
	temp1 varchar(200),
	temp2 varchar(200)
	
)
select * from notice;
drop table notice;


--文件表(文件的实体表)
	--文件编号
	--文件名	
	--文件路径	
	--文件大小   用varchar字段
	--外键，user表的id,文件发布者
	--上传时间
	
	--文件状态 是否可读。1代表可读，0代表不可读  删除
	
	--阅读次数
	--下载次数
create table file(
	fid int primary key auto_increment,
	fname varchar(200) not null,
	fpath varchar(200) not null,
	fsize varchar(200),
	u_id int,
	ftime date,
	fstatus int default 1 ,
	temp1 varchar(200),
	temp2 varchar(200),
	
	f_read int default 0,
	f_updown int default 0	
);
select * from file;
insert into file(fname,fpath,fsize,u_id,ftime)values('大话西游.txt','F:\eclipse','5kB',1,now());


--文件表的u_id外键
alter table file
    add constraint fk_file_uid
       foreign key(u_id ) references users(u_id);


--文件表的u_id外键
alter table file
    add constraint fk_file_uid
       foreign key(u_id ) references users(u_id);

alter table users
    add constraint fk_users
       foreign key( r_id ) references role(r_id);

alter table users
    add constraint fk_users_2
       foreign key( d_id ) references department(d_id);

alter table opinion
    add constraint fk_opinion
       foreign key( do_id ) references document(do_id);