package com.yc.biz;

import com.yc.bean.Users;

public interface UsersBiz {

	/**
	 * 登录
	 * @param voteUser
	 * @return
	 * @throws Exception
	 */
	public Users login(Users users)throws Exception;
}
