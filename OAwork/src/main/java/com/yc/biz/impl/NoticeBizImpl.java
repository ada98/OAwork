package com.yc.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yc.bean.Notice;
import com.yc.biz.NoticeBiz;
import com.yc.dao.BaseDao;

@Service
@Transactional
public class NoticeBizImpl implements NoticeBiz {
	@Resource(name="baseDao")
	private BaseDao baseDao;

	@Override
	public void addNotice(Notice notice) {
		this.baseDao.save(notice, "addNotice");
	}

	@Override
	@Transactional(readOnly=true)
	public List<Notice> findAllNotice(Notice notice) {
		List<Notice> noticeList=this.baseDao.findAll(notice, "findAllNotice");
		return noticeList;
	}

	@Override
	@Transactional(readOnly=true)
	public int findAllNoticeCount() {
		int result=Integer.parseInt(this.baseDao.findOne(Notice.class, "findAllNoticeCount").toString()) ;
		return result;
	}

	@Override
	public void batchDelNotice(Notice notice) {
		this.baseDao.del(notice, "batchDelNotice");
	}

	@Override
	@Transactional(readOnly=true)
	public Notice findNoticeBynid(Notice notice) {
		notice=(Notice) this.baseDao.findOne(notice, "findNoticeBynid");
		return notice;
	}

}
