package org.hui.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.hui.entity.News;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface NewsDao {
    //首页查询新闻，按照时间排序，最新8条新闻
    List<News> indexSelectNews(String nclass);

    //根据id查询新闻
    @Select("select * from lh_news where id = #{id}")
    News selectId(int id);

    //查询所有新闻 按照时间排序
    @Select("select * from lh_news order by anow desc")
    List<News> selectAll();

    int insertOne(@Param("title") String title,@Param("content") String content,@Param("img") String img,@Param("nclass") String nclass);

    @Delete("delete from lh_news where id = #{id}")
    int deleteOne(int id);
}
