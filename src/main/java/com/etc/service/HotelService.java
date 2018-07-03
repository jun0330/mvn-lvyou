package com.etc.service;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.etc.entity.Hotel;

public interface HotelService {
	
    int deleteById(Integer hotelId);

    int addHotel(Hotel hotel);

    int addSelective(Hotel hotel);

    List<Hotel> selectById(Integer hotelId);

    int updateByIdSelective(Hotel hotel);

    int updateById(Hotel hotel);
}