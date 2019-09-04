package org.hui.service;

import org.hui.dao.JobDao;
import org.hui.entity.Job;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Service("jobService")
public class JobService {
    @Autowired
    private JobDao jobDao;

    //查询所有
    public List<Job> queryAllJob(){
        return jobDao.selectAll();
    }

    public int deleteId(int id) {
        return jobDao.deleteId(id);
    }

    public int insertOne(String name, String major, String company, String salary, String jobinfo, String fileName) {
        return jobDao.insertOne(name,major,company,salary,jobinfo,fileName);
    }
}
