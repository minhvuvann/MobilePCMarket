package com.astore.tool;


import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class HashPassword {
    private static HashPassword instance;

    public HashPassword() {
    }
    public  static HashPassword getInstance(){
        if (instance==null){
            instance = new HashPassword();
        }
        return  instance;
    }

    public String hashPassword(String pwd){
        try{
            MessageDigest sha256 = null;
            sha256 = MessageDigest.getInstance("SHA-256");
            byte[] hash = sha256.digest(pwd.getBytes());
            BigInteger number = new BigInteger(1,hash);
            return number.toString(16);
        }catch (NoSuchAlgorithmException e){
            return  null;
        }
    }

    public static void main(String[] args) {
       String s =  HashPassword.getInstance().hashPassword("123456");
        System.out.println(s);
    }
}
