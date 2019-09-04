package org.hui.controller;

import com.alibaba.fastjson.JSONObject;
import org.hui.entity.Ad;
import org.hui.entity.Job;
import org.hui.entity.News;
import org.hui.entity.Subscribe;
import org.hui.service.AdService;
import org.hui.service.JobService;
import org.hui.service.NewsService;
import org.hui.service.SubscribeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.ArrayDeque;
import java.util.List;

@Controller
public class IndexController {
    @Autowired
    private NewsService newsService;
    @Autowired
    private JobService jobService;
    @Autowired
    private SubscribeService subscribeService;
    @Autowired
    private AdService adService;

    @RequestMapping("/index")
    public String indexSelectNews(Model model, HttpServletRequest request) {
        String school = "学校动态";
        String industry = "行业新闻";

        //新闻查询模块
        List<News> schoolNewsList = newsService.indexSelectNews(school);
        List<News> industryNewsList = newsService.indexSelectNews(industry);
        model.addAttribute("schoolNewsList", schoolNewsList);
        model.addAttribute("industryNewsList", industryNewsList);

        //就业信息查询模块
        List<Job> jobList = jobService.queryAllJob();
        model.addAttribute("jogList", jobList);

        //获取预约同学信息
        List<Subscribe> subscribeList = subscribeService.queryAllYes();
        model.addAttribute("subscribeList", subscribeList);

        //查询轮播模块
        List<Ad> adList = adService.selectAllYes();
        model.addAttribute("adList",adList);
        return "index";
    }

    //新同学预约 通过ajax实现
    @RequestMapping(value = "/addOne", method = RequestMethod.POST, produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String addSubscribeOne(@RequestParam("name") String name, @RequestParam("phone") String phone, @RequestParam("school") String school, @RequestParam("major") String major) {
        subscribeService.addSubscribeOne(name, phone, school, major);
        String aa = JSONObject.toJSONString("添加成功");
        return aa;
    }
}
