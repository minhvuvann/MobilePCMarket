package com.astore.services.implement;

import com.astore.dao.implement.FooterDao;
import com.astore.model.Footer;
import com.astore.services.IFooterServices;

import java.util.List;

public class FooterServices implements IFooterServices {
    private FooterDao h;
    private static FooterServices footerServices;

    public FooterServices() {
        this.h = new FooterDao();
    }

    public static FooterServices getInstance() {
        if (footerServices == null) {
            footerServices = new FooterServices();
        }
        return footerServices;
    }

    @Override
    public Footer getFooterByTitle(String title) {
        return h.getFooterByTitle(title);
    }
}
