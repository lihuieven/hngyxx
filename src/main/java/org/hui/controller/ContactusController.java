package org.hui.controller;

import org.hui.dao.AdDao;
import org.hui.entity.Ad;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class ContactusController {
    @Autowired
    private AdDao adDao;

    @RequestMapping("/contact-us")
    public String contactus(Model model){
        //获取轮播
        List<Ad> adList = adDao.selectAd();
        model.addAttribute("adList",adList);

        return "contact-us";
    }
}
