package com.etc.service;

import org.springframework.stereotype.Repository;

import com.etc.entity.ViewOrder;

@Repository(value="viewOrderMapper")
public interface ViewOrderService {
	
    int deleteById(Integer vorderId);

    int addViewOrder(ViewOrder viewOrder);

    int addSelective(ViewOrder viewOrder);

    ViewOrder selectById(Integer vorderId);

    int updateByIdSelective(ViewOrder viewOrder);

    int updateById(ViewOrder viewOrder);
}