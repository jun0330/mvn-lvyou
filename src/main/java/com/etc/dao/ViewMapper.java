package com.etc.dao;

import org.springframework.stereotype.Repository;

import com.etc.entity.View;

@Repository(value="viewMapper")
public interface ViewMapper {
    int deleteByPrimaryKey(Integer viewid);

    int insert(View record);

    int insertSelective(View record);

    View selectByPrimaryKey(Integer viewid);

    int updateByPrimaryKeySelective(View record);

    int updateByPrimaryKey(View record);
}