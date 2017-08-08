insert into users(u_name,u_pwd,u_sex,u_tel,u_email,u_dress,u_card,s_alary,u_photo,u_status,r_id,d_id)
			values('a','6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2','男','123456789','123456789@qq.com','湖南衡阳','123456789',2000.0,'1',1,1,1);

insert into department(d_name) values('人事部');			

insert into role(r_name,r_before,r_next)values('副总经理','总经理','部门主管')

insert into message(m_title,m_send,m_recevie,m_content,m_date,m_file) values('放假通知',1,2,'放假时间为',now(),null);

insert into document(do_title,do_send,do_time,do_content)values('一二三',1,now(),'一三四');

insert into opinion(do_id,o_userid,o_time,o_reason)values(1,'1',now(),null);

insert into notic(n_title,n_send,n_department,n_content,n_time) values('放假公告',1,'人事部','',now());
			
insert into file(fname,fpath,fsize,fuser,ftime)values('一一一','D:/',20.5,1,now());
		
select * from users;
select * from department;
select * from role;
select * from message;
select * from document;
select * from opinion;
select * from notic;
select * from file;
