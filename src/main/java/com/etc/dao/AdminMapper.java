package com.etc.dao;

import org.springframework.stereotype.Repository;

import com.etc.entity.Admin;

/**
 * 用户管理员的dao,详细功能->mapper
 * @author Administrator
 *
 */
@Repository(value="adminMapper")
public interface AdminMapper {
	
    int deleteByPrimaryKey(Integer adminid);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Integer adminid);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
}