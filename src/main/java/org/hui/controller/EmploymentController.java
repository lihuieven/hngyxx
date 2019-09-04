package org.hui.controller;

import org.hui.dao.AdDao;
import org.hui.dao.JobDao;
import org.hui.dao.SubscribeDao;
import org.hui.entity.Ad;
import org.hui.entity.Job;
import org.hui.entity.Subscribe;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class EmploymentController {
    @Autowired
    private AdDao adDao;
    @Autowired
    private SubscribeDao subscribeDao;
    @Autowired
    private JobDao jobDao;

    @RequestMapping("/employment")
    public String employment(Model model){
        //查询轮播
        List<Ad> adList = adDao.selectAd();
        model.addAttribute("adList",adList);

        //查询毕业同学工作情况
        List<Job> jobList = jobDao.selectAll();
        model.addAttribute("jobList",jobList);

        //查询预约成功同学信息
        List<Subscribe> subscribeList= subscribeDao.selectAllYes();
        model.addAttribute("subscribeList",subscribeList);

        return "employment";
    }
}
