package org.hui.service;

import org.hui.dao.NewsDao;
import org.hui.entity.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Service("newsService")
public class NewsService {
    @Autowired
    private NewsDao newsDao;

    //首页查询新闻，按照时间排序，最新8条新闻
    public List<News> indexSelectNews(String nclass){
        return newsDao.indexSelectNews(nclass);
    }

    public News selectId(int id) {
        return newsDao.selectId(id);
    }

    public List<News> selectAll() {
        return newsDao.selectAll();
    }

    public int insertOne(String title, String content, String img, String nclass) {
        return newsDao.insertOne(title,content,img,nclass);
    }

    public int deleteOne(int id) {
        return newsDao.deleteOne(id);
    }
}
