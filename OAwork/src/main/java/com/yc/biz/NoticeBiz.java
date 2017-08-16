package com.yc.biz;

import java.util.List;

import com.yc.bean.Notice;

public interface NoticeBiz {
	/**
	 * 添加公告
	 * @param notice
	 */
	public void addNotice(Notice notice);
	
	/**
	 * 查看所有公告
	 */
	public List<Notice> findAllNotice(Notice notice);
	
	public int findAllNoticeCount();
	
	/**
	 * 批量删除
	 */
	public void batchDelNotice(Notice notice);
	
	/**
	 * 根据ID来查询记录
	 */
	public Notice findNoticeBynid(Notice notice);
	
}
