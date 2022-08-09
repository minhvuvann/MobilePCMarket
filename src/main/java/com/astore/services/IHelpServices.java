package com.astore.services;

import com.astore.model.Help;

import java.util.List;

public interface IHelpServices {

    Help getById(int id); // tìm kiếm

    List<Help> getByName(String name); // // tìm kiếm

    List<Help> getListHelp();// danh sách all khách hàng cần hổ trợ

    boolean delete(int id);

    boolean insert(Help help);
}
