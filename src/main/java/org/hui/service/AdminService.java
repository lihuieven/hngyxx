package org.hui.service;

import org.hui.dao.AdminDao;
import org.hui.entity.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminService {
    @Autowired
    private AdminDao adminDao;

    public boolean login(String name, String password){
        int i = adminDao.login(name,password);
        return i>0?true:false;
    }
}
