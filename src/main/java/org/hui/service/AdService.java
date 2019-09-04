package org.hui.service;

import org.hui.dao.AdDao;
import org.hui.entity.Ad;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("adService")
public class AdService {
    @Autowired
    private AdDao adDao;

    public List<Ad> selectAllYes() {
        return adDao.selectAd();
    }

    public List<Ad> selectAll() {
        return adDao.selectAll();
    }

    public int deleteOne(int id) {
        return adDao.deleteOne(id);
    }
}
