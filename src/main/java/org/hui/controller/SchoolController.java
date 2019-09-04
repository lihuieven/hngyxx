package org.hui.controller;

import org.hui.dao.AdDao;
import org.hui.dao.SubscribeDao;
import org.hui.entity.Ad;
import org.hui.entity.Subscribe;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class SchoolController {
    @Autowired
    private SubscribeDao subscribeDao;
    @Autowired
    private AdDao adDao;

    @RequestMapping("/school")
    public String school(Model model){
        //查询预约成功同学
        List<Subscribe> subscribeList = subscribeDao.selectAllYes();
        model.addAttribute("subscribeList",subscribeList);

        //查询轮播
        List<Ad> adList = adDao.selectAd();
        model.addAttribute("adList",adList);

        return "school";
    }
}
