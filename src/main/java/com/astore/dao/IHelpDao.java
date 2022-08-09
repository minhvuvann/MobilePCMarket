package com.astore.dao;

import com.astore.model.Help;

import java.util.List;

public interface IHelpDao {
    Help getById(int id); // tìm kiếm

    List<Help> getByName(String name); // // tìm kiếm

    List<Help> getListHelp();// danh sách all khách hàng cần hổ trợ

    boolean delete(int id);

    boolean insert(Help help);

}
