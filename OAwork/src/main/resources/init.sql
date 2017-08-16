--部门表
insert into department(d_name) values('人事部');
insert into department(d_name) values('财务部');
insert into department(d_name) values('研发部');
insert into department(d_name) values('市场部');


--职务表
insert into role(r_name)values('超级管理员')
insert into role(r_name,r_next)values('总经理','部门经理')
insert into role(r_name,r_before,r_next)values('部门经理','总经理','员工')
insert into role(r_name,r_before)values('员工','部门经理')

select * from users;
--员工表
insert into users(u_wid,u_name,u_pwd,u_sex,u_tel,u_email,u_dress,u_card,s_alary,u_photo,u_status,d_name,r_name,u_date)
values('0001', '曹凡雁','6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2','男','18485965236','1716858966@qq.com','湖南省衡阳市珠晖区衡花路18号湖南工学院','432021199802126000',4000.0,'照片暂无',default,'人事部','超级管理员',now());
insert into users(u_wid,u_name,u_pwd,u_sex,u_tel,u_email,u_dress,u_card,s_alary,u_photo,u_status,d_name,r_name,u_date)
values( '0002','杨骏奇','6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2','男','18485965236','1716858966@qq.com','湖南省衡阳市珠晖区衡花路18号湖南工学院','432021199802126000',10000.0,'照片暂无',default,null,'总经理',now());

--部门经理  员工三个
insert into users(u_wid,u_name,u_pwd,u_sex,u_tel,u_email,u_dress,u_card,s_alary,u_photo,u_status,d_name,r_name,u_date)
values( '0003','柏浩波','6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2','男','18485965236','401868171@qq.com','湖南省衡阳市珠晖区衡花路18号湖南工学院','432021199802126000',7000.0,'照片暂无',default,'人事部','部门经理',now());
insert into users(u_wid,u_name,u_pwd,u_sex,u_tel,u_email,u_dress,u_card,s_alary,u_photo,u_status,d_name,r_name,u_date)
values( '0004','赫天工','6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2','男','18485965236','410672977@qq.com','湖南省衡阳市珠晖区衡花路18号湖南工学院','432021199802126000',4000.0,'照片暂无',default,'人事部','员工',now());
insert into users(u_wid,u_name,u_pwd,u_sex,u_tel,u_email,u_dress,u_card,s_alary,u_photo,u_status,d_name,r_name,u_date)
values( '0005','阮溪蓝','6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2','女','18485965236','410672977@qq.com','湖南省衡阳市珠晖区衡花路18号湖南工学院','432021199802126000',4000.0,'照片暂无',default,'人事部','员工',now());
insert into users(u_wid,u_name,u_pwd,u_sex,u_tel,u_email,u_dress,u_card,s_alary,u_photo,u_status,d_name,r_name,u_date)
values( '0006','卫昆皓','6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2','男','18485965236','410672977@qq.com','湖南省衡阳市珠晖区衡花路18号湖南工学院','432021199802126000',4000.0,'照片暂无',default,'人事部','员工',now());

insert into users(u_wid,u_name,u_pwd,u_sex,u_tel,u_email,u_dress,u_card,s_alary,u_photo,u_status,d_name,r_name,u_date)
values( '0007','江运锋','6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2','男','18485965236','401868171@qq.com','湖南省衡阳市珠晖区衡花路18号湖南工学院','432021199802126000',7000.0,'照片暂无',default,'财务部','部门经理',now());
insert into users(u_wid,u_name,u_pwd,u_sex,u_tel,u_email,u_dress,u_card,s_alary,u_photo,u_status,d_name,r_name,u_date)
values( '0008','丁朋兴','6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2','男','18485965236','410672977@qq.com','湖南省衡阳市珠晖区衡花路18号湖南工学院','432021199802126000',4000.0,'照片暂无',default,'财务部','员工',now());
insert into users(u_wid,u_name,u_pwd,u_sex,u_tel,u_email,u_dress,u_card,s_alary,u_photo,u_status,d_name,r_name,u_date)
values( '0009','安夏旋','6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2','女','18485965236','410672977@qq.com','湖南省衡阳市珠晖区衡花路18号湖南工学院','432021199802126000',4000.0,'照片暂无',default,'财务部','员工',now());
insert into users(u_wid,u_name,u_pwd,u_sex,u_tel,u_email,u_dress,u_card,s_alary,u_photo,u_status,d_name,r_name,u_date)
values( '0010','乾芷烟','6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2','女','18485965236','410672977@qq.com','湖南省衡阳市珠晖区衡花路18号湖南工学院','432021199802126000',4000.0,'照片暂无',default,'财务部','员工',now());

insert into users(u_wid,u_name,u_pwd,u_sex,u_tel,u_email,u_dress,u_card,s_alary,u_photo,u_status,d_name,r_name,u_date)
values( '0011','乔映雪','6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2','女','18485965236','401868171@qq.com','湖南省衡阳市珠晖区衡花路18号湖南工学院','432021199802126000',7000.0,'照片暂无',default,'研发部','部门经理',now());
insert into users(u_wid,u_name,u_pwd,u_sex,u_tel,u_email,u_dress,u_card,s_alary,u_photo,u_status,d_name,r_name,u_date)
values( '0012','官怜南','6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2','男','18485965236','410672977@qq.com','湖南省衡阳市珠晖区衡花路18号湖南工学院','432021199802126000',4000.0,'照片暂无',default,'研发部','员工',now());
insert into users(u_wid,u_name,u_pwd,u_sex,u_tel,u_email,u_dress,u_card,s_alary,u_photo,u_status,d_name,r_name,u_date)
values( '0013','范欣然','6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2','女','18485965236','410672977@qq.com','湖南省衡阳市珠晖区衡花路18号湖南工学院','432021199802126000',4000.0,'照片暂无',default,'研发部','员工',now());
insert into users(u_wid,u_name,u_pwd,u_sex,u_tel,u_email,u_dress,u_card,s_alary,u_photo,u_status,d_name,r_name,u_date)
values( '0014','竺如彤','6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2','女','18485965236','410672977@qq.com','湖南省衡阳市珠晖区衡花路18号湖南工学院','432021199802126000',4000.0,'照片暂无',default,'研发部','员工',now());

insert into users(u_wid,u_name,u_pwd,u_sex,u_tel,u_email,u_dress,u_card,s_alary,u_photo,u_status,d_name,r_name,u_date)
values( '0015','邵夏瑶','6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2','女','18485965236','401868171@qq.com','湖南省衡阳市珠晖区衡花路18号湖南工学院','432021199802126000',7000.0,'照片暂无',default,'市场部','部门经理',now());
insert into users(u_wid,u_name,u_pwd,u_sex,u_tel,u_email,u_dress,u_card,s_alary,u_photo,u_status,d_name,r_name,u_date)
values( '0016','盛自强','6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2','男','18485965236','410672977@qq.com','湖南省衡阳市珠晖区衡花路18号湖南工学院','432021199802126000',4000.0,'照片暂无',default,'市场部','员工',now());
insert into users(u_wid,u_name,u_pwd,u_sex,u_tel,u_email,u_dress,u_card,s_alary,u_photo,u_status,d_name,r_name,u_date)
values( '0017','仪妍芳','6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2','女','18485965236','410672977@qq.com','湖南省衡阳市珠晖区衡花路18号湖南工学院','432021199802126000',4000.0,'照片暂无',default,'市场部','员工',now());
insert into users(u_wid,u_name,u_pwd,u_sex,u_tel,u_email,u_dress,u_card,s_alary,u_photo,u_status,d_name,r_name,u_date)
values( '0018','彤佩珍','6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2','女','18485965236','410672977@qq.com','湖南省衡阳市珠晖区衡花路18号湖南工学院','432021199802126000',4000.0,'照片暂无',default,'市场部','员工',now());







		
select * from users;
select * from department;
select * from role;
select * from message;
select * from document;
select * from opinion;
select * from notice;
select * from file;



drop table file;
drop table notice;
drop table opinion;
drop table document;
drop table message;
drop table role;
drop table department;
drop table users;
