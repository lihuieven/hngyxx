package org.hui.controller;

import org.hui.dao.AdDao;
import org.hui.dao.SubscribeDao;
import org.hui.entity.Ad;
import org.hui.entity.Subscribe;
import org.hui.service.AdService;
import org.hui.service.SubscribeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class MajorController {
    @Autowired
    private AdService adService;
    @Autowired
    private SubscribeService subscribeService;

    @RequestMapping("/online")
    public String online(Model model){
        //轮播加载
        List<Ad> adList = adService.selectAllYes();
        model.addAttribute("adList",adList);

        //预约成功同学信息
        List<Subscribe> subscribeList = subscribeService.queryAllYes();
        model.addAttribute("subscribeList",subscribeList);

        return "online";
    }

    @RequestMapping("/phone")
    public String phone(Model model){
        //轮播加载
        List<Ad> adList = adService.selectAllYes();
        model.addAttribute("adList",adList);

        //预约成功同学信息
        List<Subscribe> subscribeList = subscribeService.queryAllYes();
        model.addAttribute("subscribeList",subscribeList);

        return "phone";
    }

    @RequestMapping("/media")
    public String media(Model model){
        //轮播加载
        List<Ad> adList = adService.selectAllYes();
        model.addAttribute("adList",adList);

        //预约成功同学信息
        List<Subscribe> subscribeList = subscribeService.queryAllYes();
        model.addAttribute("subscribeList",subscribeList);

        return "media";
    }

    @RequestMapping("/big_data")
    public String big_data(Model model){
        //轮播加载
        List<Ad> adList = adService.selectAllYes();
        model.addAttribute("adList",adList);

        //预约成功同学信息
        List<Subscribe> subscribeList = subscribeService.queryAllYes();
        model.addAttribute("subscribeList",subscribeList);

        return "big_data";
    }

    @RequestMapping("/ui")
    public String ui(Model model){
        //轮播加载
        List<Ad> adList = adService.selectAllYes();
        model.addAttribute("adList",adList);

        return "ui";
    }

    @RequestMapping("/kefuzy")
    public String kefuzy(Model model){
        //轮播加载
        List<Ad> adList = adService.selectAllYes();
        model.addAttribute("adList",adList);

        return "kefuzy";
    }
}
