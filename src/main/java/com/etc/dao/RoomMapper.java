package com.etc.dao;

import org.springframework.stereotype.Repository;

import com.etc.entity.Room;

@Repository(value="roomMapper")
public interface RoomMapper {
    int deleteByPrimaryKey(Integer roomid);

    int insert(Room record);

    int insertSelective(Room record);

    Room selectByPrimaryKey(Integer roomid);

    int updateByPrimaryKeySelective(Room record);

    int updateByPrimaryKey(Room record);
}