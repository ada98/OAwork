package com.yc.biz;

import java.util.List;

import com.yc.bean.Users;

public interface UsersBiz {

	/**
	 * 登录
	 * @param voteUser
	 * @return
	 * @throws Exception
	 */
	public Users login(Users users)throws Exception;
	
	/**
	 * 根据部门名查出用户信息
	 * @param users
	 * @return
	 * @throws Exception
	 */
	public List<Users> findDo_receive(Users users)throws Exception;
}
