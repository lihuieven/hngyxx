package org.hui.controller;

import org.hui.dao.AdDao;
import org.hui.dao.SubscribeDao;
import org.hui.entity.Ad;
import org.hui.entity.News;
import org.hui.entity.Subscribe;
import org.hui.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class NewsController {
    @Autowired
    private AdDao adDao;
    @Autowired
    private SubscribeDao subscribeDao;
    @Autowired
    private NewsService newsService;

    @RequestMapping("/news")
    public String news(Model model){
        //查询轮播
        List<Ad> adList = adDao.selectAd();
        model.addAttribute("adList",adList);

        //查询预约成功同学信息
        List<Subscribe> subscribeList = subscribeDao.selectAllYes();
        model.addAttribute("subscribeList",subscribeList);

        return "news";
    }

    @RequestMapping("/news-content")
    public String newscontent(Model model,int id){
        News n = newsService.selectId(id);
        model.addAttribute("news",n);
        return "news-content";
    }
}
