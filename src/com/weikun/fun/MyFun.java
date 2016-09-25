package com.weikun.fun;

/**
 * Created by Administrator on 2016/9/25.
 */
public class MyFun {
    public static String inversion(String msg){
       return  new StringBuffer(msg).reverse().toString();

    }
    public static int count(String msg){
        return msg.length();
    }
}
