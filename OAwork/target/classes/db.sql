create database oa;

--Ա����
	--Ա�����
	--Ա������
	--��¼����
	--�Ա�
	--��ϵ��ʽ
	--����
	--סַ
	--���֤
	--����
	--��Ƭ
	--��ְ״̬
	--ְ��id
	--����id
create table users(
	u_id int primary key auto_increment,
	u_name varchar(200) not null,
	u_pwd varchar(200) not null,
	u_sex varchar(2) default '��' not null,
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

--���ű�
	--���ű��
	--������
create table department(
	d_id int primary key auto_increment,
	d_name varchar(100),
	temp1 varchar(200),
	temp2 varchar(200)
);

--ְ���
	--ְ����
	--ְ��
	--��һ��
	--��һ��
create table role(
	r_id int primary key auto_increment,
	r_name varchar(100) not null,
	r_before varchar(100),
	r_next varchar(100),
	temp1 varchar(200),
	temp2 varchar(200)
);
			
--��Ϣ��
	--��Ϣ���
	--����
	--������
	--������
	--����
	--����ʱ��
	--����
	--�Ƿ�����
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

--���ı�
	--���ı��
	--����
	--������
	--����ʱ��
	--��������
	--�鿴����
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

--�����ɹ��ģ�������һ��������Ȼ����������˲鿴�Ƿ�����һ��������������������

--���������
	--�����ó������ɵ�id
	--���ı��
	--������
	--����ʱ��
	--�������  0Ϊδ������1Ϊͨ����2Ϊδͨ��
	--��������
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

--����֪ͨ��
	--������
	--����
	--������
	--��������
	--��������
	--����ʱ��
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

--�ļ���
	--�ļ����
	--�ļ���	
	--�ļ�·��	
	--�ļ���С
	--�����user���id,�ļ�������
	--�ϴ�ʱ��
	--�ļ�״̬ �Ƿ�ɶ���1����ɶ���0�����ɶ�
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