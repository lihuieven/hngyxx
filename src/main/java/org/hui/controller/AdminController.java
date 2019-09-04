package org.hui.controller;

import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.hui.entity.*;
import org.hui.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private SubscribeService subscribeService;
    @Autowired
    private JobService jobService;
    @Autowired
    private NewsService newsService;
    @Autowired
    private AdService adService;
    @Autowired
    private AdminService adminService;

    //登录
    @RequestMapping("/login")
    public String login(@RequestParam("name") String name,@RequestParam("password") String password,HttpServletRequest request){
        boolean b = adminService.login(name,password);
        System.out.println(name+"---"+password);
        HttpSession session = null;
        if (b) {
            session = request.getSession();
            session.setAttribute("name",name);
            System.out.println("我验证成功了");
            return "/admin/index";
        } else {
            return "/admin/login";
        }
    }

    //预约管理页面
    //全部预约信息查询
    @RequestMapping("/subscribe")
    public String index(Model model, @RequestParam(value = "page", defaultValue = "1") int page) {
        PageHelper.startPage(page, 15);
        List<Subscribe> subscribeList = subscribeService.queryAll();
        PageInfo pageInfo = new PageInfo(subscribeList);
        model.addAttribute("pageInfo", pageInfo);

        return "/admin/subscribe";
    }

    //预约成功查询
    @RequestMapping("/subscribeok")
    public String subscribeok(Model model, @RequestParam(value = "page", defaultValue = "1") int page) {
        PageHelper.startPage(page,15);
        List<Subscribe> subscribeList = subscribeService.queryAllYes();
        PageInfo pageInfo = new PageInfo(subscribeList);
        model.addAttribute("pageInfo", pageInfo);
        return "/admin/subscribeok";
    }

    //未处理预约查询
    @RequestMapping("/subscribeno")
    public String subscribeno(Model model,@RequestParam(value = "page",defaultValue = "1") int page) {
        PageHelper.startPage(page,15);
        List<Subscribe> subscribeList = subscribeService.queryAllNo();
        PageInfo pageInfo = new PageInfo(subscribeList);
        model.addAttribute("pageInfo", pageInfo);
        return "/admin/subscribeno";
    }

    //删除预约
    @RequestMapping(value = "/deleteSubscribe", method = RequestMethod.POST, produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String deleteSubscribe(@RequestParam("id") int id) {
        int i = subscribeService.deleteId(id);
        String aa = JSONObject.toJSONString("删除成功");
        return aa;
    }

    //处理预约信息
    @RequestMapping(value = "/updateSubscribe", method = RequestMethod.POST, produces = {"application/josn;charset=UTF-8"})
    @ResponseBody
    public String updateSubscribe(@RequestParam("id") int id) {
        int i = subscribeService.updateSubscribe(id);
        String aa = JSONObject.toJSONString("该同学预约成功");
        return aa;
    }

    //就业信息页面
    //就业信息查询
    @RequestMapping("/job")
    public String job(Model model,@RequestParam(value = "page",defaultValue = "1") int page) {
        PageHelper.startPage(page,4);
        List<Job> jobList = jobService.queryAllJob();
        PageInfo pageInfo = new PageInfo(jobList);
        model.addAttribute("pageInfo", pageInfo);

        return "/admin/job";
    }

    //删除一条就业信息
    @RequestMapping(value = "/deleteJob", method = RequestMethod.POST, produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String deleteJob(@RequestParam("id") int id) {
        int i = jobService.deleteId(id);
        String aa = JSONObject.toJSONString("删除成功");
        return aa;
    }

    //添加就业信息
    @RequestMapping(value = "/addjob", method = RequestMethod.POST)
    public String addJob(HttpServletRequest request, @RequestParam("image") MultipartFile f, @RequestParam("name") String name, @RequestParam(value = "major", required = false) String major, @RequestParam("company") String company, @RequestParam("salary") String salary, @RequestParam("jobinfo") String jobinfo) throws IOException {
        //创建文件夹
        String path = "F:\\img\\hngyxx\\job\\";
        File file = new File(path);
        if (!file.exists()) {
            file.mkdirs();
        }
        //获取文件名
        String filename = f.getOriginalFilename();
        //获取文件后缀名
        String suffix = filename.substring(filename.lastIndexOf(".") + 1);
        String newname = UUID.randomUUID().toString() + "." + suffix;
        f.transferTo(new File(path, newname));
        //将新工作信息写入数据库
        jobService.insertOne(name, major, company, salary, jobinfo, newname);
        return "redirect:/admin/job";
    }

    //新闻信息页面
    //查询所有新闻信息
    @RequestMapping("/news")
    public String news(Model model,@RequestParam(value = "page",defaultValue = "1") int page) {
        PageHelper.startPage(page,5);
        List<News> newsList = newsService.selectAll();
        PageInfo pageInfo = new PageInfo(newsList);
        model.addAttribute("pageInfo", pageInfo);

        return "/admin/news";
    }

    //添加新闻
    @RequestMapping(value = "/addnews", method = RequestMethod.POST)
    public String addnews(@RequestParam("image") MultipartFile file, Model model, @RequestParam("title") String title, @RequestParam("content") String content, @RequestParam("nclass") String nclass) throws IOException {
        //创建文件输出路径
        String path = "F:/img/hngyxx/news/";
        File file1 = new File(path);
        if (!file1.exists()) {
            file1.mkdirs();
        }
        //获取文件名
        String fileName = file.getOriginalFilename();
        //获取文件后缀名
        String suffix = fileName.substring(fileName.lastIndexOf(".") + 1);
        String newName = UUID.randomUUID().toString() + "." + suffix;
        file.transferTo(new File(path, newName));

        //将文件信息写入数据库
        int i = newsService.insertOne(title, content, newName, nclass);
        return "redirect:/admin/news";
    }

    //删除一条新闻
    @RequestMapping(value = "/deletenews", method = RequestMethod.POST, produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String deleteNews(@RequestParam("id") int id) {
        int i = newsService.deleteOne(id);
        String aa = JSONObject.toJSONString("删除成功");
        return aa;
    }

    //查看新闻详情
    @RequestMapping("/new")
    public String newOne(@RequestParam("id") int id, Model model){
        News news = newsService.selectId(id);
        model.addAttribute("onenew",news);
        return "/admin/new";
    }


    //轮播信息页面
    //查询所有轮播
    @RequestMapping("/ad")
    public String ad(Model model,@RequestParam(value = "page",defaultValue = "1") int page) {
        PageHelper.startPage(page,5);
        List<Ad> adList = adService.selectAll();
        PageInfo pageInfo = new PageInfo(adList);
        model.addAttribute("pageInfo", pageInfo);
        return "/admin/ad";
    }

    //删除轮播图
    @RequestMapping(value = "/deletead", method = RequestMethod.POST, produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public String delteAd(@RequestParam("id") int id) {
        int i = adService.deleteOne(id);
        String aa = JSONObject.toJSONString("删除成功！");
        return aa;
    }

}
