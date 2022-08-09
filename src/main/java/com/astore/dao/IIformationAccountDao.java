package com.astore.dao;

import com.astore.model.GiftUser;
import com.astore.model.HistoryDelivery;
import com.astore.model.Product;

import java.util.List;
import java.util.Map;

public interface IIformationAccountDao {
    String rankUser(int idUser);//hạng khách hàng

    int countOrderUser(int idUser);//số lượng đơn hàng

    Map<String,String> giftRankUser(String rank); //ưa đãi của từng mức hạng


    List<HistoryDelivery> listOrder(int idUser);// danh sách đơn hàng của khách hàng

    long sumOrderUser(int idUser);// tổng các hóa đơn

    List<GiftUser> getListGift(int idUser);//danh sách các món quà của khách hàng



}
