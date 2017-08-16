package com.yc.bean;

import java.io.Serializable;

public class File implements Serializable {
	private static final long serialVersionUID = 1L;
	/*fid int primary key auto_increment,
	fname varchar(200) not null,
	fpath varchar(200) not null,
	fsize varchar(200),
	u_id int,
	ftime date,
	fstatus int default 1 ,
	temp1 varchar(200),
	temp2 varchar(200),
	
	f_read int default 0,
	f_updown int default 0	*/
	private Integer fid;
	private String fpath;
	private String fsize;
	
	
	
}
