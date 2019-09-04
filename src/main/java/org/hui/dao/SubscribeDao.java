package org.hui.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.hui.entity.Subscribe;

import java.util.List;

public interface SubscribeDao {
    //查询所有预约成功的同学
    @Select("select * from lh_subscribe where isshow = 'y'")
    List<Subscribe> selectAllYes();

    //首页预约信息保存
    int addSubscribeOne(@Param("name") String name, @Param("phone") String phone, @Param("school") String school, @Param("major") String major);

    //管理员查询所有预约信息
    @Select("select * from lh_subscribe")
    List<Subscribe> selectAll();

    //删除一条预约
    @Delete("delete from lh_subscribe where id = #{id}")
    int deleteId(int id);

    //查询所有未处理预约的同学
    @Select("select * from lh_subscribe where isshow = 'n'")
    List<Subscribe> selectAllNo();

    //处理预约信息
    @Update("update lh_subscribe set isshow = 'y' where id = #{id}")
    int updateOne(int id);
}
