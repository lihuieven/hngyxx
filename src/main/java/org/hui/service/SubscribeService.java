package org.hui.service;

import com.github.pagehelper.PageHelper;
import org.hui.dao.SubscribeDao;
import org.hui.entity.PageBean;
import org.hui.entity.Subscribe;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("subscribeService")
public class SubscribeService {
    @Autowired
    private SubscribeDao subscribeDao;

    //查询预约成功同学
    public List<Subscribe> queryAllYes() {
        return subscribeDao.selectAllYes();
    }

    //添加新同学预约
    public int addSubscribeOne(String name, String phone, String school, String major) {
        return subscribeDao.addSubscribeOne(name,phone,school,major);
    }

    public List<Subscribe> queryAll() {
        List<Subscribe> subscribeList = subscribeDao.selectAll();
        return subscribeList;
    }

    public int deleteId(int id) {
        return subscribeDao.deleteId(id);
    }

    public List<Subscribe> queryAllNo() {
        return subscribeDao.selectAllNo();
    }

    public int updateSubscribe(int id) {
        return subscribeDao.updateOne(id);
    }
}
