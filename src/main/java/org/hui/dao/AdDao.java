package org.hui.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.hui.entity.Ad;

import java.util.List;

public interface AdDao {
    //查询允许展示的轮播图
    @Select("select * from lh_ad where isshow = 'y'")
    List<Ad> selectAd();

    @Select("select * from lh_ad")
    List<Ad> selectAll();

    @Delete("delete from lh_ad where id = #{id}")
    int deleteOne(int id);
}
