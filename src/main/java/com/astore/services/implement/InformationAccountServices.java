package com.astore.services.implement;

import com.astore.dao.IIformationAccountDao;
import com.astore.dao.implement.InformationAccountDao;
import com.astore.dao.implement.UserDao;
import com.astore.model.GiftUser;
import com.astore.model.HistoryDelivery;
import com.astore.model.Product;
import com.astore.services.IInformationAccountServices;

import java.util.List;
import java.util.Map;

public class InformationAccountServices  implements IIformationAccountDao {
    static InformationAccountServices informationAccountServices = null;
    private InformationAccountDao informationAccountDao;
    private InformationAccountServices() {
        this.informationAccountDao = new InformationAccountDao();
    }

    public static InformationAccountServices getInstance(){
        if(informationAccountServices == null){
            informationAccountServices = new InformationAccountServices();
        }
        return  informationAccountServices;
    };
    @Override
    public String rankUser(int idUser) {
        return informationAccountDao.rankUser(idUser);
    }

    @Override
    public int countOrderUser(int idUser) {
        return  informationAccountDao.countOrderUser(idUser);
    }
    @Override
    public Map<String, String> giftRankUser(String rank) {
        return informationAccountDao.giftRankUser(rank);
    }

    @Override
    public List<HistoryDelivery> listOrder(int idUser) {
        return informationAccountDao.listOrder(idUser);
    }

    @Override
    public long sumOrderUser(int idUser) {
        return informationAccountDao.sumOrderUser(idUser);
    }

    @Override
    public List<GiftUser> getListGift(int idUser) {
        return informationAccountDao.getListGift(idUser);
    }



}
