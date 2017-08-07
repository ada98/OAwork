package com.yc.biz.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.yc.bean.Users;
import com.yc.biz.UsersBiz;
import com.yc.dao.BaseDao;
import com.yc.utils.Encrypt;

@Service
@Transactional
public class UsersBizImpl implements UsersBiz {

	@Resource(name="baseDao")
	private BaseDao baseDao;
	
	@Override
	@Transactional(readOnly=true,propagation=Propagation.SUPPORTS)
	public Users login(Users users) throws Exception {
		users.setU_pwd(Encrypt.md5AndSha(users.getU_pwd()));
		Users u=(Users) this.baseDao.findOne(users, "getUserByLogin");
		return u;
	}
	
}
