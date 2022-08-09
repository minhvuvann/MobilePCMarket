package com.astore.services.implement;

import com.astore.dao.implement.UserDao;
import com.astore.model.User;
import com.astore.services.IUserServices;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class UserServices implements IUserServices {

    static UserServices userServices = null;
    private UserDao userdao;


    private UserServices() {
        this.userdao = new UserDao();
    }

    public static UserServices getInstance(){
        if(userServices == null){
            userServices = new UserServices();
        }
        return  userServices;
    }


    @Override
    public boolean insertUser(User user) {
        return userdao.insertUser(user);
    }

    @Override
    public boolean insertAdmin(User user) {
        return userdao.insertAdmin(user);
    }

    @Override
    public boolean updateUser(User user) {
        return userdao.updateUser(user);
    }

    @Override
    public boolean updateAdmin(User user) {
        return userdao.updateAdmin(user);
    }


    @Override
    public boolean delete(int id) {
        return userdao.delete(id);
    }

    @Override
    public User getById(int groupId, int id) {
        return userdao.getById(groupId,id);
    }

    @Override
    public List<User> getByName(int groupId, String name) {
        return userdao.getByName(groupId,name);
    }

    @Override
    public List<User> getAllUserByGroup(int groupId) {
        return userdao.getAllUserByGroup(groupId);
    }

    @Override
    public User loginAdmin(String userName, String password) {
        return userdao.loginAdmin(userName, password);
    }
    @Override
    public User checkLogin(String userName, String password) {

        return userdao.checkLogin(userName,password);
    }

    @Override
    public boolean roleLogin(int permission,String userName, String password){
        return userdao.roleLogin(permission,userName, password);
    }

    @Override
    public boolean checkUserExist(String emailOrPhone) {
        return userdao.checkUserExist(emailOrPhone);
    }//kiểm tra tài khoản có tồn tại không

    @Override
    public boolean updateForgotPwd(String userName, String pwd) {
        return userdao.updateForgotPwd(userName,pwd);
    }

    @Override
    public User getInformationUser(String userName) {
        return userdao.getInformationUser(userName);
    }

    @Override
    public boolean updateAvatarCustomer(int id, String urlAvt) {
        return userdao.updateAvatarCustomer(id, urlAvt);
    }

}
