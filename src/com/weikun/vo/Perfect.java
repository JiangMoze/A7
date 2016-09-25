package com.weikun.vo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * Created by Administrator on 2016/9/25.
 */
public class Perfect {
    private String values;

    public String getValues() {
        return values;
    }

    public List getNews() {
        return news;
    }

    public void setNews(List news) {
        this.news = news;
    }

    private List news;

    private HashMap games;

    public HashMap getGames() {
        return games;
    }

    public void setGames(HashMap games) {
        this.games = games;
    }

    public void setValues(String values) {
        if(values.equals("news")){
            news=new ArrayList();
            news.add("周杰伦");

            news.add("习近平");
            news.add("奥巴马");
        }else if(values.equals("game")){
            games=new HashMap();
            games.put("CS","反恐精英");
            games.put("CF","穿越火线");
            games.put("LOL","英雄联盟");
        }

    }
}
