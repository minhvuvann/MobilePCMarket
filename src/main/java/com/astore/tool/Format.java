package com.astore.tool;

public class Format {
    private static Format instance;


    public  static Format getInstance(){
        if (instance==null){
            instance = new Format();
        }
        return  instance;
    }

    public Format() {
    }

    public String formatDate(String date) {
        char [] arr = date.toCharArray();
        String resDate ="";
        String day ="";
        String month ="";
        String year="";
        for (int i=0; i<arr.length;i++){
            if (arr[i]!=' ') {
                if (i == 0) {
                    year += arr[i] + "" + arr[i + 1] + "" + arr[i + 2] + "" + arr[i + 3];
                }
                if (i == 3) {
                    month = arr[i + 2] + "" + arr[i + 3];
                }
                if (i == 6) {
                    day = arr[i + 2] + "" + arr[i + 3];
                }
            }
            else {
                break;
            }
        }
        resDate=day+"/"+month+"/"+year;
        return resDate;
    }

    public String formatMoney(String money) {
        String  res="";
        char[] moneyFormat = money.toCharArray();
        String moneySee ="";
        for (int i=0; i<moneyFormat.length;i++) {
            if (moneyFormat[i] == '.') {
                break;
            } else
                moneySee+=moneyFormat[i];
        }
        char [] moneyRes = moneySee.toCharArray();
        int size = moneyRes.length;
        for (int i=moneyRes.length-1; i>=0;i--){
            if (size-i==4){
                size=i+1;
                res=res+'.'+moneyRes[i];
            }
            else
                res+=moneyRes[i];
        }
        StringBuffer st = new StringBuffer(res);
        return st.reverse().toString();
    }

}
