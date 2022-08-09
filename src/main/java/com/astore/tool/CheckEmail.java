package com.astore.tool;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class CheckEmail {
    private static CheckEmail instance;
    private static Pattern pattern;
    private Matcher matcher;
    private static final String EMAIL_REGEX ="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
            + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
    private static final String NUMBER_PHONE = "((09|03|07|08|05)+([0-9]{8,9})\\b)";

    public CheckEmail() {
    }
    public  static CheckEmail getInstance(){
        if (instance==null){
            instance = new CheckEmail();
        }
        return  instance;
    }
    public boolean checkEmail(String email) {
        return   Pattern.compile(EMAIL_REGEX).matcher(email).matches();
    }//kiểm tra email


    public boolean checkNumberPhone(String phone) {
        pattern = Pattern.compile(NUMBER_PHONE);
        matcher = pattern.matcher(phone);
        return matcher.matches();
    }//kiểm tra số điện thoại
}
